
Pull images used by kubeadm.

### Synopsis

Pull images used by kubeadm.

```
kubeadm config images pull [flags]
```

### Options

```
      --config string               Path to kubeadm config file.
      --cri-socket string           Specify the CRI socket to connect to. (default "/var/run/dockershim.sock")
      --feature-gates string        A set of key=value pairs that describe feature gates for various features. Options are:
                                    
  -h, --help                        help for pull
      --kubernetes-version string   Choose a specific Kubernetes version for the control plane. (default "stable-1")
```

### Options inherited from parent commands

```
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --rootfs string       [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

