
Uploads the kubeadm ClusterConfiguration to a ConfigMap

### Synopsis

Uploads the kubeadm ClusterConfiguration to a ConfigMap called kubeadm-config in the kube-system namespace. This enables correct configuration of system components and a seamless user experience when upgrading. 

Alternatively, you can use kubeadm config.

```
kubeadm init phase upload-config kubeadm [flags]
```

### Examples

```
  # uploads the configuration of your cluster
  kubeadm init phase upload-config --config=myConfig.yaml
```

### Options

```
      --config string       Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
  -h, --help                help for kubeadm
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

