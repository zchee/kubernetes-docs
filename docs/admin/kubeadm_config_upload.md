
Upload configuration about the current state, so that 'kubeadm upgrade' can later know how to configure the upgraded cluster.

### Synopsis

Upload configuration about the current state, so that 'kubeadm upgrade' can later know how to configure the upgraded cluster.

```
kubeadm config upload [flags]
```

### Options

```
  -h, --help   help for upload
```

### Options inherited from parent commands

```
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --rootfs string       [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

