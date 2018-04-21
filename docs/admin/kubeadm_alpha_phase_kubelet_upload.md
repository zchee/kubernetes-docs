
Uploads dynamic kubelet configuration as ConfigMap

### Synopsis

Uploads dynamic kubelet configuration as ConfigMap and links it to the current node as ConfigMapRef. Please note that the kubelet configuration can be passed to kubeadm as a value into the master configuration file. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase kubelet upload [flags]
```

### Examples

```
  # Uploads dynamic kubelet configuration as ConfigMap.
  kubeadm alpha phase kubelet upload
```

### Options

```
      --config string       Path to kubeadm config file (WARNING: Usage of a configuration file is experimental)
  -h, --help                help for upload
      --kubeconfig string   The KubeConfig file to use when talking to the cluster (default "/etc/kubernetes/admin.conf")
```

