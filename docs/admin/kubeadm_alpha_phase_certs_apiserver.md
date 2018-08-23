
Generates the certificate for serving the kubernetes API

### Synopsis

Generates the certificate for serving the kubernetes API, and saves them into apiserver.cert and apiserver.key files.

Default SANs are kubernetes, kubernetes.default, kubernetes.default.svc, kubernetes.default.svc.cluster.local, 10.96.0.1, 127.0.0.1 

If both files already exist, kubeadm skips the generation step and existing files will be used. 

Alpha Disclaimer: this command is currently alpha.

```
kubeadm alpha phase certs apiserver [flags]
```

### Options

```
      --apiserver-advertise-address string   The IP address the API server is accessible on, to use for the API server serving cert
      --apiserver-cert-extra-sans strings    Optional extra altnames to use for the API server serving cert. Can be both IP addresses and DNS names
      --cert-dir string                      The path where to save the certificates (default "/etc/kubernetes/pki")
      --config string                        Path to kubeadm config file. WARNING: Usage of a configuration file is experimental
  -h, --help                                 help for apiserver
      --service-cidr string                  Alternative range of IP address for service VIPs, from which derives the internal API server VIP that will be added to the API Server serving cert (default "10.96.0.0/12")
      --service-dns-domain string            Alternative domain for services, to use for the API server serving cert (default "cluster.local")
```

