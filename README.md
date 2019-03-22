# x-sync
分布式sync文件同步，支持mac/linux/windows。可以作为个人同步盘。

# 设计
没有明确的客户端和服务端概念，所有的端都可以是客户端，也可以是服务端。



# 设计参考
## 服务发现
https://go.etcd.io/etcd/blob/master/Documentation/op-guide/clustering.md#etcd-discovery

# 开源引用
- [fsnotify/fsnotify](https://github.com/fsnotify/fsnotify)
- [etcd-io/etcd](https://go.etcd.io/etcd/tree/master/contrib/raftexample)
- [filebrowser](https://github.com/filebrowser/filebrowser)