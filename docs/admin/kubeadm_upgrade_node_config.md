
Downloads the kubelet configuration from the cluster ConfigMap kubelet-config-1.X, where X is the minor version of the kubelet.

### Synopsis

Downloads the kubelet configuration from a ConfigMap of the form "kubelet-config-1.X" in the cluster, where X is the minor version of the kubelet. kubeadm uses the --kubelet-version parameter to determine what the desired kubelet version is. Give

```
kubeadm upgrade node config [flags]
```

### Examples

```
  # Downloads the kubelet configuration from the ConfigMap in the cluster. Uses a specific desired kubelet version.
  kubeadm upgrade node config --kubelet-version v1.13.0
  
  # Simulates the downloading of the kubelet configuration from the ConfigMap in the cluster with a specific desired
  # version. Does not change any state locally on the node.
  kubeadm upgrade node config --kubelet-version v1.13.0 --dry-run
```

### Options

```
      --dry-run                  Do not change any state, just output the actions that would be performed.
  -h, --help                     help for config
      --kubeconfig string        The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/kubelet.conf")
      --kubelet-version string   The *desired* version for the kubelet after the upgrade.
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

