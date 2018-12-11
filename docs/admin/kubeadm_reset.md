
Run this to revert any changes made to this host by 'kubeadm init' or 'kubeadm join'.

### Synopsis

Run this to revert any changes made to this host by 'kubeadm init' or 'kubeadm join'.

```
kubeadm reset [flags]
```

### Options

```
      --cert-dir string                   The path to the directory where the certificates are stored. If specified, clean this directory. (default "/etc/kubernetes/pki")
      --cri-socket string                 The path to the CRI socket to use with crictl when cleaning up containers. (default "/var/run/dockershim.sock")
  -f, --force                             Reset the node without prompting for confirmation.
  -h, --help                              help for reset
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
      --kubeconfig string                 The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

