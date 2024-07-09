// Copyright 2024 Matrix Origin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//	http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by MockGen. DO NOT EDIT.
// Source: /Users/huby/matrixorigin/matrixone/pkg/util/executor/types.go

// Package mock_executor is a generated GoMock package.
package mock_executor

import (
	context "context"
	reflect "reflect"

	gomock "github.com/golang/mock/gomock"
	client "github.com/matrixorigin/matrixone/pkg/txn/client"
	executor "github.com/matrixorigin/matrixone/pkg/util/executor"
)

// MockSQLExecutor is a mock of SQLExecutor interface.
type MockSQLExecutor struct {
	ctrl     *gomock.Controller
	recorder *MockSQLExecutorMockRecorder
}

// MockSQLExecutorMockRecorder is the mock recorder for MockSQLExecutor.
type MockSQLExecutorMockRecorder struct {
	mock *MockSQLExecutor
}

// NewMockSQLExecutor creates a new mock instance.
func NewMockSQLExecutor(ctrl *gomock.Controller) *MockSQLExecutor {
	mock := &MockSQLExecutor{ctrl: ctrl}
	mock.recorder = &MockSQLExecutorMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockSQLExecutor) EXPECT() *MockSQLExecutorMockRecorder {
	return m.recorder
}

// Exec mocks base method.
func (m *MockSQLExecutor) Exec(ctx context.Context, sql string, opts executor.Options) (executor.Result, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Exec", ctx, sql, opts)
	ret0, _ := ret[0].(executor.Result)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// Exec indicates an expected call of Exec.
func (mr *MockSQLExecutorMockRecorder) Exec(ctx, sql, opts interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Exec", reflect.TypeOf((*MockSQLExecutor)(nil).Exec), ctx, sql, opts)
}

// ExecTxn mocks base method.
func (m *MockSQLExecutor) ExecTxn(ctx context.Context, execFunc func(executor.TxnExecutor) error, opts executor.Options) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "ExecTxn", ctx, execFunc, opts)
	ret0, _ := ret[0].(error)
	return ret0
}

// ExecTxn indicates an expected call of ExecTxn.
func (mr *MockSQLExecutorMockRecorder) ExecTxn(ctx, execFunc, opts interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "ExecTxn", reflect.TypeOf((*MockSQLExecutor)(nil).ExecTxn), ctx, execFunc, opts)
}

// MockTxnExecutor is a mock of TxnExecutor interface.
type MockTxnExecutor struct {
	ctrl     *gomock.Controller
	recorder *MockTxnExecutorMockRecorder
}

// MockTxnExecutorMockRecorder is the mock recorder for MockTxnExecutor.
type MockTxnExecutorMockRecorder struct {
	mock *MockTxnExecutor
}

// NewMockTxnExecutor creates a new mock instance.
func NewMockTxnExecutor(ctrl *gomock.Controller) *MockTxnExecutor {
	mock := &MockTxnExecutor{ctrl: ctrl}
	mock.recorder = &MockTxnExecutorMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockTxnExecutor) EXPECT() *MockTxnExecutorMockRecorder {
	return m.recorder
}

// Exec mocks base method.
func (m *MockTxnExecutor) Exec(sql string, options executor.StatementOption) (executor.Result, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Exec", sql, options)
	ret0, _ := ret[0].(executor.Result)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// Exec indicates an expected call of Exec.
func (mr *MockTxnExecutorMockRecorder) Exec(sql, options interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Exec", reflect.TypeOf((*MockTxnExecutor)(nil).Exec), sql, options)
}

// LockTable mocks base method.
func (m *MockTxnExecutor) LockTable(table string) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "LockTable", table)
	ret0, _ := ret[0].(error)
	return ret0
}

// LockTable indicates an expected call of LockTable.
func (mr *MockTxnExecutorMockRecorder) LockTable(table interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "LockTable", reflect.TypeOf((*MockTxnExecutor)(nil).LockTable), table)
}

// Txn mocks base method.
func (m *MockTxnExecutor) Txn() client.TxnOperator {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Txn")
	ret0, _ := ret[0].(client.TxnOperator)
	return ret0
}

// Txn indicates an expected call of Txn.
func (mr *MockTxnExecutorMockRecorder) Txn() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Txn", reflect.TypeOf((*MockTxnExecutor)(nil).Txn))
}

// Use mocks base method.
func (m *MockTxnExecutor) Use(db string) {
	m.ctrl.T.Helper()
	m.ctrl.Call(m, "Use", db)
}

// Use indicates an expected call of Use.
func (mr *MockTxnExecutorMockRecorder) Use(db interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Use", reflect.TypeOf((*MockTxnExecutor)(nil).Use), db)
}
