
Enables or updates dynamic kubelet configuration on node

### Synopsis

Enables or updates dynamic kubelet configuration on node. This should be run on nodes. Please note that the kubelet configuration can be passed to kubeadm as a value into the master configuration file. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase kubelet enable [flags]
```

### Examples

```
  # Enables dynamic kubelet configuration on node.
  kubeadm alpha phase kubelet enable
```

### Options

```
      --config string      Path to kubeadm config file (WARNING: Usage of a configuration file is experimental)
  -h, --help               help for enable
      --node-name string   Name of the node that should enable the dynamic kubelet configuration
```

