
Converts a static Pod-hosted control plane into a self-hosted one

### Synopsis

Converts static Pod files for control plane components into self-hosted DaemonSets configured via the Kubernetes API. 

See the documentation for self-hosting limitations. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha selfhosting pivot [flags]
```

### Examples

```
  # Converts a static Pod-hosted control plane into a self-hosted one.
  
  kubeadm alpha phase self-hosting convert-from-staticpods
```

### Options

```
      --cert-dir string          The path where certificates are stored (default "/etc/kubernetes/pki")
      --config string            Path to a kubeadm config file. WARNING: Usage of a configuration file is experimental
  -f, --force                    Pivot the cluster without prompting for confirmation
  -h, --help                     help for pivot
      --kubeconfig string        The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
  -s, --store-certs-in-secrets   Enable storing certs in secrets
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

