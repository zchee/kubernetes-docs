
Generates the client certificate for liveness probes to healtcheck etcd

### Synopsis

Renews the client certificate for liveness probes to healtcheck etcd, and saves them into etcd/healthcheck-client.cert and etcd/healthcheck-client.key files. 

Extra attributes such as SANs will be based on the existing certificates, there is no need to resupply them.

```
kubeadm alpha certs renew etcd-healthcheck-client [flags]
```

### Options

```
      --cert-dir string     The path where to save the certificates (default "/etc/kubernetes/pki")
      --config string       Path to a kubeadm configuration file.
      --csr-dir string      The path to output the CSRs and private keys to
      --csr-only            Create CSRs instead of generating certificates
  -h, --help                help for etcd-healthcheck-client
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations are searched for an existing KubeConfig file. (default "/etc/kubernetes/admin.conf")
      --use-api             Use the Kubernetes certificate API to renew certificates
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```

