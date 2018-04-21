
Writes init kubelet configuration to disk

### Synopsis

Writes init kubelet configuration to disk for dynamic kubelet configuration feature. Please note that the kubelet configuration can be passed to kubeadm as a value into the master configuration file. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase kubelet init [flags]
```

### Examples

```
  # Writes init kubelet configuration to disk.
  kubeadm alpha phase kubelet init
```

### Options

```
      --config string   Path to kubeadm config file (WARNING: Usage of a configuration file is experimental)
  -h, --help            help for init
```

