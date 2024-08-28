// Code generated by MockGen. DO NOT EDIT.
// Source: /Users/huby/matrixorigin/matrixone/pkg/incrservice/types.go

// Package mock_frontend is a generated GoMock package.
package mock_frontend

import (
	context "context"
	reflect "reflect"

	gomock "github.com/golang/mock/gomock"
	batch "github.com/matrixorigin/matrixone/pkg/container/batch"
	incrservice "github.com/matrixorigin/matrixone/pkg/incrservice"
	client "github.com/matrixorigin/matrixone/pkg/txn/client"
)

// MockAutoIncrementService is a mock of AutoIncrementService interface.
type MockAutoIncrementService struct {
	ctrl     *gomock.Controller
	recorder *MockAutoIncrementServiceMockRecorder
}

// MockAutoIncrementServiceMockRecorder is the mock recorder for MockAutoIncrementService.
type MockAutoIncrementServiceMockRecorder struct {
	mock *MockAutoIncrementService
}

// NewMockAutoIncrementService creates a new mock instance.
func NewMockAutoIncrementService(ctrl *gomock.Controller) *MockAutoIncrementService {
	mock := &MockAutoIncrementService{ctrl: ctrl}
	mock.recorder = &MockAutoIncrementServiceMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockAutoIncrementService) EXPECT() *MockAutoIncrementServiceMockRecorder {
	return m.recorder
}

// Close mocks base method.
func (m *MockAutoIncrementService) Close() {
	m.ctrl.T.Helper()
	m.ctrl.Call(m, "Close")
}

// Close indicates an expected call of Close.
func (mr *MockAutoIncrementServiceMockRecorder) Close() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Close", reflect.TypeOf((*MockAutoIncrementService)(nil).Close))
}

// Create mocks base method.
func (m *MockAutoIncrementService) Create(ctx context.Context, tableID uint64, caches []incrservice.AutoColumn, txn client.TxnOperator) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Create", ctx, tableID, caches, txn)
	ret0, _ := ret[0].(error)
	return ret0
}

// Create indicates an expected call of Create.
func (mr *MockAutoIncrementServiceMockRecorder) Create(ctx, tableID, caches, txn interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Create", reflect.TypeOf((*MockAutoIncrementService)(nil).Create), ctx, tableID, caches, txn)
}

// CurrentValue mocks base method.
func (m *MockAutoIncrementService) CurrentValue(ctx context.Context, tableID uint64, col string) (uint64, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "CurrentValue", ctx, tableID, col)
	ret0, _ := ret[0].(uint64)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// CurrentValue indicates an expected call of CurrentValue.
func (mr *MockAutoIncrementServiceMockRecorder) CurrentValue(ctx, tableID, col interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "CurrentValue", reflect.TypeOf((*MockAutoIncrementService)(nil).CurrentValue), ctx, tableID, col)
}

// Delete mocks base method.
func (m *MockAutoIncrementService) Delete(ctx context.Context, tableID uint64, txn client.TxnOperator) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Delete", ctx, tableID, txn)
	ret0, _ := ret[0].(error)
	return ret0
}

// Delete indicates an expected call of Delete.
func (mr *MockAutoIncrementServiceMockRecorder) Delete(ctx, tableID, txn interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Delete", reflect.TypeOf((*MockAutoIncrementService)(nil).Delete), ctx, tableID, txn)
}

// InsertValues mocks base method.
func (m *MockAutoIncrementService) InsertValues(ctx context.Context, tableID uint64, bat *batch.Batch, estimate int64) (uint64, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "InsertValues", ctx, tableID, bat, estimate)
	ret0, _ := ret[0].(uint64)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// InsertValues indicates an expected call of InsertValues.
func (mr *MockAutoIncrementServiceMockRecorder) InsertValues(ctx, tableID, bat, estimate interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "InsertValues", reflect.TypeOf((*MockAutoIncrementService)(nil).InsertValues), ctx, tableID, bat, estimate)
}

// Reload mocks base method.
func (m *MockAutoIncrementService) Reload(ctx context.Context, tableID uint64) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Reload", ctx, tableID)
	ret0, _ := ret[0].(error)
	return ret0
}

// Reload indicates an expected call of Reload.
func (mr *MockAutoIncrementServiceMockRecorder) Reload(ctx, tableID interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Reload", reflect.TypeOf((*MockAutoIncrementService)(nil).Reload), ctx, tableID)
}

// Reset mocks base method.
func (m *MockAutoIncrementService) Reset(ctx context.Context, oldTableID, newTableID uint64, keep bool, txn client.TxnOperator) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Reset", ctx, oldTableID, newTableID, keep, txn)
	ret0, _ := ret[0].(error)
	return ret0
}

// Reset indicates an expected call of Reset.
func (mr *MockAutoIncrementServiceMockRecorder) Reset(ctx, oldTableID, newTableID, keep, txn interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Reset", reflect.TypeOf((*MockAutoIncrementService)(nil).Reset), ctx, oldTableID, newTableID, keep, txn)
}

// UUID mocks base method.
func (m *MockAutoIncrementService) UUID() string {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "UUID")
	ret0, _ := ret[0].(string)
	return ret0
}

// UUID indicates an expected call of UUID.
func (mr *MockAutoIncrementServiceMockRecorder) UUID() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "UUID", reflect.TypeOf((*MockAutoIncrementService)(nil).UUID))
}

// MockincrTableCache is a mock of incrTableCache interface.
type MockincrTableCache struct {
	ctrl     *gomock.Controller
	recorder *MockincrTableCacheMockRecorder
}

// MockincrTableCacheMockRecorder is the mock recorder for MockincrTableCache.
type MockincrTableCacheMockRecorder struct {
	mock *MockincrTableCache
}

// NewMockincrTableCache creates a new mock instance.
func NewMockincrTableCache(ctrl *gomock.Controller) *MockincrTableCache {
	mock := &MockincrTableCache{ctrl: ctrl}
	mock.recorder = &MockincrTableCacheMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockincrTableCache) EXPECT() *MockincrTableCacheMockRecorder {
	return m.recorder
}

// adjust mocks base method.
func (m *MockincrTableCache) adjust(ctx context.Context, cols []incrservice.AutoColumn) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "adjust", ctx, cols)
	ret0, _ := ret[0].(error)
	return ret0
}

// adjust indicates an expected call of adjust.
func (mr *MockincrTableCacheMockRecorder) adjust(ctx, cols interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "adjust", reflect.TypeOf((*MockincrTableCache)(nil).adjust), ctx, cols)
}

// close mocks base method.
func (m *MockincrTableCache) close() error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "close")
	ret0, _ := ret[0].(error)
	return ret0
}

// close indicates an expected call of close.
func (mr *MockincrTableCacheMockRecorder) close() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "close", reflect.TypeOf((*MockincrTableCache)(nil).close))
}

// columns mocks base method.
func (m *MockincrTableCache) columns() []incrservice.AutoColumn {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "columns")
	ret0, _ := ret[0].([]incrservice.AutoColumn)
	return ret0
}

// columns indicates an expected call of columns.
func (mr *MockincrTableCacheMockRecorder) columns() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "columns", reflect.TypeOf((*MockincrTableCache)(nil).columns))
}

// commit mocks base method.
func (m *MockincrTableCache) commit() {
	m.ctrl.T.Helper()
	m.ctrl.Call(m, "commit")
}

// commit indicates an expected call of commit.
func (mr *MockincrTableCacheMockRecorder) commit() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "commit", reflect.TypeOf((*MockincrTableCache)(nil).commit))
}

// currentValue mocks base method.
func (m *MockincrTableCache) currentValue(ctx context.Context, tableID uint64, col string) (uint64, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "currentValue", ctx, tableID, col)
	ret0, _ := ret[0].(uint64)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// currentValue indicates an expected call of currentValue.
func (mr *MockincrTableCacheMockRecorder) currentValue(ctx, tableID, col interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "currentValue", reflect.TypeOf((*MockincrTableCache)(nil).currentValue), ctx, tableID, col)
}

// insertAutoValues mocks base method.
func (m *MockincrTableCache) insertAutoValues(ctx context.Context, tableID uint64, bat *batch.Batch, estimate int64) (uint64, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "insertAutoValues", ctx, tableID, bat, estimate)
	ret0, _ := ret[0].(uint64)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// insertAutoValues indicates an expected call of insertAutoValues.
func (mr *MockincrTableCacheMockRecorder) insertAutoValues(ctx, tableID, bat, estimate interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "insertAutoValues", reflect.TypeOf((*MockincrTableCache)(nil).insertAutoValues), ctx, tableID, bat, estimate)
}

// table mocks base method.
func (m *MockincrTableCache) table() uint64 {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "table")
	ret0, _ := ret[0].(uint64)
	return ret0
}

// table indicates an expected call of table.
func (mr *MockincrTableCacheMockRecorder) table() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "table", reflect.TypeOf((*MockincrTableCache)(nil).table))
}

// MockvalueAllocator is a mock of valueAllocator interface.
type MockvalueAllocator struct {
	ctrl     *gomock.Controller
	recorder *MockvalueAllocatorMockRecorder
}

// MockvalueAllocatorMockRecorder is the mock recorder for MockvalueAllocator.
type MockvalueAllocatorMockRecorder struct {
	mock *MockvalueAllocator
}

// NewMockvalueAllocator creates a new mock instance.
func NewMockvalueAllocator(ctrl *gomock.Controller) *MockvalueAllocator {
	mock := &MockvalueAllocator{ctrl: ctrl}
	mock.recorder = &MockvalueAllocatorMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockvalueAllocator) EXPECT() *MockvalueAllocatorMockRecorder {
	return m.recorder
}

// allocate mocks base method.
func (m *MockvalueAllocator) allocate(ctx context.Context, tableID uint64, col string, count int, txnOp client.TxnOperator) (uint64, uint64, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "allocate", ctx, tableID, col, count, txnOp)
	ret0, _ := ret[0].(uint64)
	ret1, _ := ret[1].(uint64)
	ret2, _ := ret[2].(error)
	return ret0, ret1, ret2
}

// allocate indicates an expected call of allocate.
func (mr *MockvalueAllocatorMockRecorder) allocate(ctx, tableID, col, count, txnOp interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "allocate", reflect.TypeOf((*MockvalueAllocator)(nil).allocate), ctx, tableID, col, count, txnOp)
}

// asyncAllocate mocks base method.
func (m *MockvalueAllocator) asyncAllocate(ctx context.Context, tableID uint64, col string, count int, txnOp client.TxnOperator, cb func(uint64, uint64, error)) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "asyncAllocate", ctx, tableID, col, count, txnOp, cb)
	ret0, _ := ret[0].(error)
	return ret0
}

// asyncAllocate indicates an expected call of asyncAllocate.
func (mr *MockvalueAllocatorMockRecorder) asyncAllocate(ctx, tableID, col, count, txnOp, cb interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "asyncAllocate", reflect.TypeOf((*MockvalueAllocator)(nil).asyncAllocate), ctx, tableID, col, count, txnOp, cb)
}

// close mocks base method.
func (m *MockvalueAllocator) close() {
	m.ctrl.T.Helper()
	m.ctrl.Call(m, "close")
}

// close indicates an expected call of close.
func (mr *MockvalueAllocatorMockRecorder) close() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "close", reflect.TypeOf((*MockvalueAllocator)(nil).close))
}

// updateMinValue mocks base method.
func (m *MockvalueAllocator) updateMinValue(ctx context.Context, tableID uint64, col string, minValue uint64, txnOp client.TxnOperator) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "updateMinValue", ctx, tableID, col, minValue, txnOp)
	ret0, _ := ret[0].(error)
	return ret0
}

// updateMinValue indicates an expected call of updateMinValue.
func (mr *MockvalueAllocatorMockRecorder) updateMinValue(ctx, tableID, col, minValue, txnOp interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "updateMinValue", reflect.TypeOf((*MockvalueAllocator)(nil).updateMinValue), ctx, tableID, col, minValue, txnOp)
}

// MockIncrValueStore is a mock of IncrValueStore interface.
type MockIncrValueStore struct {
	ctrl     *gomock.Controller
	recorder *MockIncrValueStoreMockRecorder
}

// MockIncrValueStoreMockRecorder is the mock recorder for MockIncrValueStore.
type MockIncrValueStoreMockRecorder struct {
	mock *MockIncrValueStore
}

// NewMockIncrValueStore creates a new mock instance.
func NewMockIncrValueStore(ctrl *gomock.Controller) *MockIncrValueStore {
	mock := &MockIncrValueStore{ctrl: ctrl}
	mock.recorder = &MockIncrValueStoreMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockIncrValueStore) EXPECT() *MockIncrValueStoreMockRecorder {
	return m.recorder
}

// Allocate mocks base method.
func (m *MockIncrValueStore) Allocate(ctx context.Context, tableID uint64, col string, count int, txnOp client.TxnOperator) (uint64, uint64, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Allocate", ctx, tableID, col, count, txnOp)
	ret0, _ := ret[0].(uint64)
	ret1, _ := ret[1].(uint64)
	ret2, _ := ret[2].(error)
	return ret0, ret1, ret2
}

// Allocate indicates an expected call of Allocate.
func (mr *MockIncrValueStoreMockRecorder) Allocate(ctx, tableID, col, count, txnOp interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Allocate", reflect.TypeOf((*MockIncrValueStore)(nil).Allocate), ctx, tableID, col, count, txnOp)
}

// Close mocks base method.
func (m *MockIncrValueStore) Close() {
	m.ctrl.T.Helper()
	m.ctrl.Call(m, "Close")
}

// Close indicates an expected call of Close.
func (mr *MockIncrValueStoreMockRecorder) Close() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Close", reflect.TypeOf((*MockIncrValueStore)(nil).Close))
}

// Create mocks base method.
func (m *MockIncrValueStore) Create(ctx context.Context, tableID uint64, cols []incrservice.AutoColumn, txnOp client.TxnOperator) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Create", ctx, tableID, cols, txnOp)
	ret0, _ := ret[0].(error)
	return ret0
}

// Create indicates an expected call of Create.
func (mr *MockIncrValueStoreMockRecorder) Create(ctx, tableID, cols, txnOp interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Create", reflect.TypeOf((*MockIncrValueStore)(nil).Create), ctx, tableID, cols, txnOp)
}

// Delete mocks base method.
func (m *MockIncrValueStore) Delete(ctx context.Context, tableID uint64) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Delete", ctx, tableID)
	ret0, _ := ret[0].(error)
	return ret0
}

// Delete indicates an expected call of Delete.
func (mr *MockIncrValueStoreMockRecorder) Delete(ctx, tableID interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Delete", reflect.TypeOf((*MockIncrValueStore)(nil).Delete), ctx, tableID)
}

// GetColumns mocks base method.
func (m *MockIncrValueStore) GetColumns(ctx context.Context, tableID uint64, txnOp client.TxnOperator) ([]incrservice.AutoColumn, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "GetColumns", ctx, tableID, txnOp)
	ret0, _ := ret[0].([]incrservice.AutoColumn)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// GetColumns indicates an expected call of GetColumns.
func (mr *MockIncrValueStoreMockRecorder) GetColumns(ctx, tableID, txnOp interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "GetColumns", reflect.TypeOf((*MockIncrValueStore)(nil).GetColumns), ctx, tableID, txnOp)
}

// UpdateMinValue mocks base method.
func (m *MockIncrValueStore) UpdateMinValue(ctx context.Context, tableID uint64, col string, minValue uint64, txnOp client.TxnOperator) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "UpdateMinValue", ctx, tableID, col, minValue, txnOp)
	ret0, _ := ret[0].(error)
	return ret0
}

// UpdateMinValue indicates an expected call of UpdateMinValue.
func (mr *MockIncrValueStoreMockRecorder) UpdateMinValue(ctx, tableID, col, minValue, txnOp interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "UpdateMinValue", reflect.TypeOf((*MockIncrValueStore)(nil).UpdateMinValue), ctx, tableID, col, minValue, txnOp)
}
