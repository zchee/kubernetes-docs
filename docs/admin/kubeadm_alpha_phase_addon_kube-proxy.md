
Installs the kube-proxy addon to a Kubernetes cluster

### Synopsis

Installs the kube-proxy addon components via the API server. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase addon kube-proxy [flags]
```

### Options

```
      --apiserver-advertise-address string   The IP address the API server is accessible on
      --apiserver-bind-port int32            The port the API server is accessible on (default 6443)
      --config string                        Path to a kubeadm config file. WARNING: Usage of a configuration file is experimental
  -h, --help                                 help for kube-proxy
      --image-repository string              Choose a container registry to pull control plane images from (default "k8s.gcr.io")
      --kubeconfig string                    The KubeConfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --kubernetes-version string            Choose a specific Kubernetes version for the control plane (default "stable-1.11")
      --pod-network-cidr string              The range of IP addresses used for the Pod network
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

