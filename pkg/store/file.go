package store

type FileStore struct {
	path string
}

func init() {
	f.RegisterExecutor("file", initFileStore, &FileStore{})
}

func initFileStore(configInstance interface{}) (i interface{}, e error) {
	return configInstance.(*FileStore), nil
}
