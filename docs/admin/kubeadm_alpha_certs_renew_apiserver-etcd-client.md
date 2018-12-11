
Generates the client apiserver uses to access etcd

### Synopsis

Renews the client apiserver uses to access etcd, and saves them into apiserver-etcd-client.cert and apiserver-etcd-client.key files. 

Extra attributes such as SANs will be based on the existing certificates, there is no need to resupply them.

```
kubeadm alpha certs renew apiserver-etcd-client [flags]
```

### Options

```
      --cert-dir string     The path where to save the certificates (default "/etc/kubernetes/pki")
      --config string       Path to a kubeadm configuration file.
      --csr-dir string      The path to output the CSRs and private keys to
      --csr-only            Create CSRs instead of generating certificates
  -h, --help                help for apiserver-etcd-client
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --use-api             Use the Kubernetes certificate API to renew certificates
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

