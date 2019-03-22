#!/usr/bin/env bash
export GO11MODULE="1"
go mod verify
go build -o bin/raft_example ./pkg/raft_example