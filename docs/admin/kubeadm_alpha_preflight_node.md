
Run node pre-flight checks

### Synopsis

Run node pre-flight checks, functionally equivalent to what implemented by kubeadm join. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha preflight node [flags]
```

### Examples

```
  # Run node pre-flight checks.
  kubeadm alpha preflight node
```

### Options

```
      --config string                     Path to a kubeadm configuration file.
  -h, --help                              help for node
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

