
Writes kubelet settings and (re)starts the kubelet

### Synopsis

Writes a file with KubeletConfiguration and an environment file with node specific kubelet settings, and then (re)starts kubelet.

```
kubeadm init phase kubelet-start [flags]
```

### Examples

```
  # Writes a dynamic environment file with kubelet flags from a InitConfiguration file.
  kubeadm init phase kubelet-start --config masterconfig.yaml
```

### Options

```
      --config string       Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
      --cri-socket string   Specify the CRI socket to connect to. (default "/var/run/dockershim.sock")
  -h, --help                help for kubelet-start
      --node-name string    Specify the node name.
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

