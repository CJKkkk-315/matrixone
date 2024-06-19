package frontend

import (
	"encoding/binary"
	"github.com/matrixorigin/matrixone/pkg/common/moerr"
	"net"
	"time"
)

// WriteOptions write options
type WriteOptions struct {
	// Timeout deadline for write
	Timeout time.Duration
	// Flush flush data to net.Conn
	Flush bool
}

// ReadOptions read options
type ReadOptions struct {
	// Timeout deadline for read
	Timeout time.Duration
}

type IOSession interface {
	ID() uint64

	Write(msg any, options WriteOptions) error

	Read(option ReadOptions) (any, error)

	Flush(timeout time.Duration) error

	OutBuf() *ByteBuf

	RemoteAddress() string

	Disconnect() error
}

type baseIO struct {
	id                    uint64
	conn                  net.Conn
	localAddr, remoteAddr string
	connected             bool
	sequenceId            uint8
	in                    *ByteBuf
	out                   *ByteBuf
	allocator             Allocator
}

// NewIOSession create a new io session
func NewIOSession(conn net.Conn, allocator Allocator) *baseIO {
	bio := &baseIO{
		conn:       conn,
		localAddr:  conn.RemoteAddr().String(),
		remoteAddr: conn.LocalAddr().String(),
		connected:  true,
		in:         nil,
		out:        nil,
		allocator:  allocator,
	}
	bio.in = NewByteBuf(allocator)
	bio.out = NewByteBuf(allocator)

	return bio
}

func (bio *baseIO) ID() uint64 {
	return bio.id
}

func (bio *baseIO) RawConn() net.Conn {
	return bio.conn
}

func (bio *baseIO) UseConn(conn net.Conn) {
	bio.conn = conn
}
func (bio *baseIO) Disconnect() error {
	return bio.closeConn()
}

func (bio *baseIO) Close() error {
	err := bio.closeConn()
	if err != nil {
		return err
	}
	bio.connected = false

	if bio.out != nil {
		bio.out.Close()
	}
	if bio.in != nil {
		bio.in.Close()
	}

	getGlobalRtMgr().Closed(bio)
	return nil
}

func (bio *baseIO) Read() (any, error) {
	payloads := make([]byte, 0)
	for {
		if !bio.connected {
			return nil, moerr.NewInternalError(moerr.Context(), "The IOSession connection has been closed")
		}
		var readLength int
		var packetLength int
		for {
			n, err := bio.conn.Read(bio.in.header[readLength:])
			if err != nil {
				return nil, err
			}
			readLength += n
			if readLength == HeaderLengthOfTheProtocol {
				packetLength = int(uint32(bio.in.header[0]) | uint32(bio.in.header[1])<<8 | uint32(bio.in.header[2])<<16)
				break
			}
		}

		if packetLength == 0 {
			break
		}
		payload, err := bio.ReadOnePayload(packetLength)
		if err != nil {
			return nil, err
		}

		if uint32(packetLength) == MaxPayloadSize {
			payloads = append(payloads, payload...)
		}

		if len(payloads) == 0 {
			return payload, err
		} else {
			payloads = append(payloads, payload...)
			break
		}
	}

	return payloads, nil

}

func (bio *baseIO) ReadOnePayload(packetLength int) ([]byte, error) {
	var buf []byte
	var readLength int
	var err error
	var n int

	if packetLength > fixBufferSize {
		buf = bio.allocator.Alloc(packetLength)
		defer bio.allocator.Free(buf)
	} else {
		buf = bio.in.fixBuf
	}
	for {
		n, err = bio.conn.Read(buf[readLength:packetLength])
		if err != nil {
			return nil, err
		}
		readLength += n

		if readLength == packetLength {
			payload := make([]byte, packetLength)
			copy(payload, buf[:packetLength])
			return payload, nil
		}
	}
}

func (bio *baseIO) Append(elems ...byte) {
	remainFixBuf := fixBufferSize - bio.out.fixIndex
	if len(elems) > remainFixBuf {
		buf := bio.allocator.Alloc(len(elems))
		copy(buf, elems)
		bio.out.dynamicBuf.PushBack(buf)
	} else {
		copy(bio.out.fixBuf[bio.out.fixIndex:], elems)
		bio.out.fixIndex += len(elems)
	}
	bio.out.length += len(elems)
	return
}

func (bio *baseIO) Flush() error {
	if bio.out.length == 0 {
		return nil
	}

	var err error
	dataLength := bio.out.length
	for dataLength > int(MaxPayloadSize) {
		err = bio.FlushLength(int(MaxPayloadSize))
		if err != nil {
			return err
		}
		dataLength -= int(MaxPayloadSize)
	}

	err = bio.FlushLength(dataLength)

	if err != nil {
		return err
	}

	bio.out.dynamicBuf.Init()

	return err

}

func (bio *baseIO) FlushLength(length int) error {
	var header [4]byte
	var err error
	binary.LittleEndian.PutUint32(header[:], uint32(length))
	header[3] = bio.sequenceId
	bio.sequenceId += 1

	_, err = bio.conn.Write(header[:])
	if err != nil {
		return err
	}

	if bio.out.fixIndex != 0 {
		_, err = bio.conn.Write(bio.out.fixBuf[:bio.out.fixIndex])

		if err != nil {
			return err
		}
		bio.out.fixIndex = 0
		length -= bio.out.fixIndex
	}

	for length != 0 {
		node := bio.out.dynamicBuf.Front()
		data := node.Value.([]byte)
		nodeLength := len(data) - bio.out.cutIndex
		if nodeLength > length {
			_, err = bio.conn.Write(data[bio.out.cutIndex : bio.out.cutIndex+length])

			if err != nil {
				return err
			}

			bio.out.cutIndex += length
			length = 0
		} else {
			_, err = bio.conn.Write(data[bio.out.cutIndex:])

			if err != nil {
				return err
			}

			length -= nodeLength
			bio.out.dynamicBuf.Remove(node)
			bio.out.alloc.Free(data)
			bio.out.cutIndex = 0
		}
	}

	return nil
}

func (bio *baseIO) Write(payload []byte) error {
	if !bio.connected {
		return moerr.NewInternalError(moerr.Context(), "The IOSession connection has been closed")
	}
	var err error
	var header [4]byte

	err = bio.Flush()
	if err != nil {
		return err
	}

	length := len(payload)
	binary.LittleEndian.PutUint32(header[:], uint32(length))
	header[3] = bio.sequenceId
	bio.sequenceId += 1

	_, err = bio.conn.Write(header[:])
	if err != nil {
		return err
	}

	_, err = bio.conn.Write(payload)
	if err != nil {
		return err
	}
	return nil
}

func (bio *baseIO) RemoteAddress() string {
	return bio.remoteAddr
}

func (bio *baseIO) closeConn() error {
	if bio.conn != nil {
		if err := bio.conn.Close(); err != nil {
			return err
		}
	}
	return nil
}
