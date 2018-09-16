
Run node pre-flight checks

### Synopsis

Run node pre-flight checks, functionally equivalent to what implemented by kubeadm join. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase preflight node [flags]
```

### Examples

```
  # Run node pre-flight checks.
  kubeadm alpha phase preflight node
```

### Options

```
  -h, --help   help for node
```

### Options inherited from parent commands

```
      --config string                     Path to kubeadm config file (WARNING: Usage of a configuration file is experimental)
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
      --rootfs string                     [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

