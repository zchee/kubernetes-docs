
Run master pre-flight checks

### Synopsis

Run master pre-flight checks, functionally equivalent to what implemented by kubeadm init. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase preflight master [flags]
```

### Examples

```
  # Run master pre-flight checks.
  kubeadm alpha phase preflight master
```

### Options

```
  -h, --help   help for master
```

### Options inherited from parent commands

```
      --config string                     Path to kubeadm config file (WARNING: Usage of a configuration file is experimental)
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
      --rootfs string                     [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

