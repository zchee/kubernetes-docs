
Generates a private key for signing service account tokens along with its public key

### Synopsis

Generates the private key for signing service account tokens along with its public key, and saves them into sa.key and sa.pub files. If both files already exist, kubeadm skips the generation step and existing files will be used. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm init phase certs sa [flags]
```

### Options

```
  -h, --help   help for sa
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

