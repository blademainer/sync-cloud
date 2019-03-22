#!/usr/bin/env bash
export GO111MODULE=1
go mod verify
go build -o bin/raft_example ./pkg/raft_example