#!/usr/bin/env bash
go mod verify
go build -o bin/raft_example ./pkg/raft_example