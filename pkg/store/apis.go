package store

import "github.com/blademainer/commons/pkg/factory"

type Data interface {
	Encode() []byte
	Decode([]byte) interface{}
}

type Interfaces interface {
	Store(Data)
	Recover([]Data)
	SetPath(path string)
	StoreType() string
}

var f = factory.InitFactory()
