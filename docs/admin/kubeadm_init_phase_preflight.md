
Run master pre-flight checks

### Synopsis

Run master pre-flight checks, functionally equivalent to what implemented by kubeadm init.

```
kubeadm init phase preflight [flags]
```

### Examples

```
  # Run master pre-flight checks using a config file.
  kubeadm init phase preflight --config kubeadm-config.yml
```

### Options

```
      --config string                     Path to kubeadm config file. WARNING: Usage of a configuration file is experimental.
  -h, --help                              help for preflight
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

