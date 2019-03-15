package config

type (
	SyncConfig struct {
	}

	// local fs
	FileConfig struct {
		Path       string
		RemotePath string
	}

	// strategies when file conflict with remote
	StrategyConfig struct {
	}

	// remote nodes
	NodeConfig struct {
		URL string
	}
)
