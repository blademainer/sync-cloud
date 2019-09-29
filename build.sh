#!/bin/bash


#cur_dir="`pwd`"
#docker run --rm -v `pwd`/:/work-dir:rw -w /work-dir -it golang  mkdir -p /go/github.com/blademainer/xworks; ln -s common /go/github.com/blademainer/xworks; ln -s network /go/github.com/blademainer/xworks; ln -s proto /go/github.com/blademainer/xworks; env GOOS=linux GOARCH=arm go build -o bin/server ./server
#docker run --rm -v `pwd`/:/go/src/github.com/blademainer/xworks:rw -v $GOPATH/src/:/go/src -w /go/src/github.com/blademainer/xworks -it golang  bash -c "go get -v github.com/Masterminds/glide; cd /go/src/github.com/Masterminds/glide && git checkout e73500c735917e39a8b782e0632418ab70250341 && go install && cd - && glide install; mkdir -p bin; env GOOS=linux GOARCH=arm go build -o bin/server ./server; env GOOS=linux GOARCH=arm  go build -o bin/client ./client"
#env GOOS=linux GOARCH=arm go build -o bin/server ./server
# CGO_ENABLED=1
arch="${1:-arm}"
docker run --rm -e GOPROXY=https://goproxy.io \
  -v $GOPATH/src/:/go/src:rw \
  -w /go/src/github.com/blademainer/sync-cloud \
  -e "GO111MODULE=on" -it golang:1.11 \
  bash -c "rm -f go.sum; mkdir -p bin; GOOS=linux GOARCH=${arch}  go build -o bin/${arch}/raft_example ./demo/raft_example"

