#!/usr/bin/env bash
GO111MODULE=on
go mod verify
go build -o bin/raft_example ./pkg/raft_example