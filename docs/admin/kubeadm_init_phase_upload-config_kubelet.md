
Uploads the kubelet component config to a ConfigMap

### Synopsis

Uploads kubelet configuration extracted from the kubeadm InitConfiguration object to a ConfigMap of the form kubelet-config-1.X in the cluster, where X is the minor version of the current (API Server) Kubernetes version.

```
kubeadm init phase upload-config kubelet [flags]
```

### Examples

```
  # Uploads the kubelet configuration from the kubeadm Config file to a ConfigMap in the cluster.
  kubeadm init phase upload-config kubelet --config kubeadm.yaml
```

### Options

```
      --config string       Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
  -h, --help                help for kubelet
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

