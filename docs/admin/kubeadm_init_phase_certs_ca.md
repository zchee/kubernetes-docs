
Generates the self-signed Kubernetes CA to provision identities for other Kubernetes components

### Synopsis

Generates the self-signed Kubernetes CA to provision identities for other Kubernetes components, and saves them into ca.cert and ca.key files. 

If both files already exist, kubeadm skips the generation step and existing files will be used. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm init phase certs ca [flags]
```

### Options

```
      --cert-dir string   The path where to save and store the certificates. (default "/etc/kubernetes/pki")
      --config string     Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
  -h, --help              help for ca
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

