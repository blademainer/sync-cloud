package store

import "github.com/syndtr/goleveldb/leveldb"

type FileStore struct {
	path string
	db   *leveldb.DB
}

func init() {
	f.RegisterExecutor("file", initFileStore, &FileStore{})
}

func initFileStore(configInstance interface{}) (i interface{}, e error) {
	db, err := leveldb.OpenFile("path/to/db", nil)
	if err != nil {
		e = err
		return
	}
	store := configInstance.(*FileStore)
	store.db = db
	e = err
	i = store
	return
}
