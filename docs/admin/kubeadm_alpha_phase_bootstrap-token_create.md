
Creates a bootstrap token to be used for node joining

### Synopsis

Creates a bootstrap token. If no token value is given, kubeadm will generate a random token instead. 

Alternatively, you can use kubeadm token. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase bootstrap-token create [flags]
```

### Options

```
      --config string        Path to kubeadm config file. WARNING: Usage of a configuration file is experimental
      --description string   A human friendly description of how this token is used.
      --groups strings       Extra groups that this token will authenticate as when used for authentication. Must match "\\Asystem:bootstrappers:[a-z0-9:-]{0,255}[a-z0-9]\\z" (default [system:bootstrappers:kubeadm:default-node-token])
  -h, --help                 help for create
      --skip-token-print     Skip printing of the bootstrap token
      --token string         The token to use for establishing bidirectional trust between nodes and masters. The format is [a-z0-9]{6}\.[a-z0-9]{16} - e.g. abcdef.0123456789abcdef
      --token-ttl duration   The duration before the token is automatically deleted (e.g. 1s, 2m, 3h). If set to '0', the token will never expire (default 24h0m0s)
      --usages strings       Describes the ways in which this token can be used. You can pass --usages multiple times or provide a comma separated list of options. Valid options: [signing,authentication] (default [signing,authentication])
```

### Options inherited from parent commands

```
      --kubeconfig string   The KubeConfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --rootfs string       [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

