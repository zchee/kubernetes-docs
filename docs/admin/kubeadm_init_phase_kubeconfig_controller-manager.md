
Generates a kubeconfig file for the controller manager to use

### Synopsis

Generates the kubeconfig file for the controller manager to use and saves it to controller-manager.conf file

```
kubeadm init phase kubeconfig controller-manager [flags]
```

### Options

```
      --apiserver-advertise-address string   The IP address the API Server will advertise it's listening on. Specify '0.0.0.0' to use the address of the default network interface.
      --apiserver-bind-port int32            Port for the API Server to bind to. (default 6443)
      --cert-dir string                      The path where to save and store the certificates. (default "/etc/kubernetes/pki")
      --config string                        Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
  -h, --help                                 help for controller-manager
      --kubeconfig-dir string                The path where to save the kubeconfig file. (default "/etc/kubernetes")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

