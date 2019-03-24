package store

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

var Stores map[string]Interfaces

func RegisterStore(i Interfaces) {
	storeType := i.StoreType()
	Stores[storeType] = i
}
