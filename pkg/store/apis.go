package store

import "github.com/blademainer/commons/pkg/factory"

type Data interface {
	Encode() []byte
	Decode([]byte) interface{}
}

type Store interface {
	// Store data to local
	Store(Data)
	// Recover all data
	Recover([]Data)
	SetPath(path string)
	StoreType() string
}

var f = factory.InitFactory()
