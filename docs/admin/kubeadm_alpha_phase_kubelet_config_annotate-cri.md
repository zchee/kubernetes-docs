
annotates the node with the given crisocket

### Synopsis

Adds an annotation to the current node with the CRI socket specified in the kubeadm InitConfiguration object. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase kubelet config annotate-cri [flags]
```

### Examples

```
  kubeadm alpha phase kubelet config annotate-cri --config kubeadm.yaml
```

### Options

```
      --config string       Path to kubeadm config file (WARNING: Usage of a configuration file is experimental)
  -h, --help                help for annotate-cri
      --kubeconfig string   The KubeConfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

