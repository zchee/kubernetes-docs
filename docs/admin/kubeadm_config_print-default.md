
Print the default values for a kubeadm configuration object.

### Synopsis


This command prints the default InitConfiguration object that is used for 'kubeadm init' and 'kubeadm upgrade',
and the default JoinConfiguration object that is used for 'kubeadm join'.

Note that sensitive values like the Bootstrap Token fields are replaced with silly values like {"abcdef.0123456789abcdef" "" "nil" <nil> [] []} in order to pass validation but
not perform the real computation for creating a token.


```
kubeadm config print-default [flags]
```

### Options

```
      --api-objects strings   A comma-separated list for API objects to print the default values for. Available values: [InitConfiguration ClusterConfiguration JoinConfiguration KubeProxyConfiguration KubeletConfiguration MasterConfiguration]. This flag unset means 'print all known objects'
  -h, --help                  help for print-default
```

### Options inherited from parent commands

```
      --kubeconfig string   The KubeConfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
```

