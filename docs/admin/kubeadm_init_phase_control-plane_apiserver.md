
Generates the kube-apiserver static Pod manifest

### Synopsis

Generates the kube-apiserver static Pod manifest

```
kubeadm init phase control-plane apiserver [flags]
```

### Options

```
      --apiserver-advertise-address string     The IP address the API Server will advertise it's listening on. Specify '0.0.0.0' to use the address of the default network interface.
      --apiserver-bind-port int32              Port for the API Server to bind to. (default 6443)
      --apiserver-extra-args mapStringString   A set of extra flags to pass to the API Server or override default ones in form of <flagname>=<value>
      --cert-dir string                        The path where to save and store the certificates. (default "/etc/kubernetes/pki")
      --config string                          Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
      --feature-gates string                   A set of key=value pairs that describe feature gates for various features. Options are:
                                               
  -h, --help                                   help for apiserver
      --image-repository string                Choose a container registry to pull control plane images from (default "k8s.gcr.io")
      --kubernetes-version string              Choose a specific Kubernetes version for the control plane. (default "stable-1")
      --service-cidr string                    Use alternative range of IP address for service VIPs. (default "10.96.0.0/12")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

