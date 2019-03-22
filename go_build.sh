#!/usr/bin/env bash
go mod verify
go build ./pkg/raft_example -o bin/raft_example