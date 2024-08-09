// Copyright 2022 Matrix Origin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package cdc

import (
	"context"
	"database/sql"
	"fmt"
	"os"

	"github.com/matrixorigin/matrixone/pkg/common/util"
	"github.com/matrixorigin/matrixone/pkg/vm/engine/disttae"
)

var _ Sinker = new(consoleSinker)

type consoleSinker struct{}

func NewConsoleSinker() Sinker {
	return &consoleSinker{}
}

func (s *consoleSinker) Sink(ctx context.Context, cdcCtx *disttae.TableCtx, data *DecoderOutput) error {
	fmt.Fprintln(os.Stderr, "====console sinker====")
	fmt.Fprintln(os.Stderr, cdcCtx.Db(), cdcCtx.DBId(), cdcCtx.Table(), cdcCtx.TableId(), data.ts)
	if value, ok := data.sqlOfRows.Load().([][]byte); !ok {
		fmt.Fprintln(os.Stderr, "no sqlOfrows")
	} else {
		fmt.Fprintln(os.Stderr, "total rows sql", len(value))
		for i, sqlBytes := range value {
			fmt.Fprintln(os.Stderr, i, string(sqlBytes))
		}
	}

	return nil
}

type mysqlSinker struct {
	mysql Sink
}

func NewMysqlSinker(mysql Sink) Sinker {
	return &mysqlSinker{
		mysql: mysql,
	}
}

func (mysql *mysqlSinker) Sink(ctx context.Context, cdcCtx *disttae.TableCtx, data *DecoderOutput) error {
	return mysql.mysql.Send(ctx, data)
}

type mysqlSink struct {
	conn           *sql.DB
	user, password string
	ip             string
	port           int
}

func NewMysqlSink(
	user, password string,
	ip string, port int) (Sink, error) {
	ret := &mysqlSink{
		user:     user,
		password: password,
		ip:       ip,
		port:     port,
	}
	err := ret.connect()
	if err != nil {
		return nil, err
	}
	return ret, err
}

func (mysql *mysqlSink) connect() (err error) {
	mysql.conn, err = openDbConn(mysql.user, mysql.password, mysql.ip, mysql.port)
	if err != nil {
		return err
	}
	return err
}

func (mysql *mysqlSink) Send(ctx context.Context, data *DecoderOutput) (err error) {
	sqlOfRows := data.sqlOfRows.Load().([][]byte)
	for _, row := range sqlOfRows {
		_, err = mysql.conn.ExecContext(ctx, util.UnsafeBytesToString(row))
		if err != nil {
			return err
		}
	}

	return nil
}

func (mysql *mysqlSink) Close() {
	if mysql.conn != nil {
		_ = mysql.conn.Close()
		mysql.conn = nil
	}
}

type matrixoneSink struct {
}

func (*matrixoneSink) Send(ctx context.Context, data *DecoderOutput) error {
	return nil
}
