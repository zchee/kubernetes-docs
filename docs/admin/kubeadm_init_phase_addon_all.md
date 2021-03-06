
Installs all the addons

### Synopsis

Installs all the addons

```
kubeadm init phase addon all [flags]
```

### Options

```
      --apiserver-advertise-address string   The IP address the API Server will advertise it's listening on. Specify '0.0.0.0' to use the address of the default network interface.
      --apiserver-bind-port int32            Port for the API Server to bind to. (default 6443)
      --config string                        Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
      --feature-gates string                 A set of key=value pairs that describe feature gates for various features. Options are:
                                             
  -h, --help                                 help for all
      --image-repository string              Choose a container registry to pull control plane images from (default "k8s.gcr.io")
      --kubeconfig string                    The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --kubernetes-version string            Choose a specific Kubernetes version for the control plane. (default "stable-1")
      --pod-network-cidr string              Specify range of IP addresses for the pod network. If set, the control plane will automatically allocate CIDRs for every node.
      --service-cidr string                  Use alternative range of IP address for service VIPs. (default "10.96.0.0/12")
      --service-dns-domain string            Use alternative domain for services, e.g. "myorg.internal". (default "cluster.local")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

