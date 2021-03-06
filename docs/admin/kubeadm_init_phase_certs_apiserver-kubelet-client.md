
Generates the Client certificate for the API server to connect to kubelet

### Synopsis

Generates the Client certificate for the API server to connect to kubelet, and saves them into apiserver-kubelet-client.cert and apiserver-kubelet-client.key files. 

If both files already exist, kubeadm skips the generation step and existing files will be used. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm init phase certs apiserver-kubelet-client [flags]
```

### Options

```
      --cert-dir string   The path where to save and store the certificates. (default "/etc/kubernetes/pki")
      --config string     Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
      --csr-dir string    The path to output the CSRs and private keys to
      --csr-only          Create CSRs instead of generating certificates
  -h, --help              help for apiserver-kubelet-client
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

