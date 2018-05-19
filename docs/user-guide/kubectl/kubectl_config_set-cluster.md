## kubectl config set-cluster

Sets a cluster entry in kubeconfig

### Synopsis

Sets a cluster entry in kubeconfig. 

Specifying a name that already exists will merge new fields on top of existing values for those fields.

```
kubectl config set-cluster NAME [--server=server] [--certificate-authority=path/to/certificate/authority] [--insecure-skip-tls-verify=true]
```

### Examples

```
  # Set only the server field on the e2e cluster entry without touching other values.
  kubectl config set-cluster e2e --server=https://1.2.3.4
  
  # Embed certificate authority data for the e2e cluster entry
  kubectl config set-cluster e2e --certificate-authority=~/.kube/e2e/kubernetes.ca.crt
  
  # Disable cert checking for the dev cluster entry
  kubectl config set-cluster e2e --insecure-skip-tls-verify=true
```

### Options

```
      --embed-certs tristate[=true]   embed-certs for the cluster entry in kubeconfig
  -h, --help                          help for set-cluster
```

### Options inherited from parent commands

```
      --alsologtostderr                  log to standard error as well as files
      --as string                        Username to impersonate for the operation
      --as-group stringArray             Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --cache-dir string                 Default HTTP cache directory (default "/Users/zchee/.kube/http-cache")
      --certificate-authority string     Path to a cert file for the certificate authority
      --client-certificate string        Path to a client certificate file for TLS
      --client-key string                Path to a client key file for TLS
      --cluster string                   The name of the kubeconfig cluster to use
      --context string                   The name of the kubeconfig context to use
      --insecure-skip-tls-verify         If true, the server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kubeconfig string                use a particular kubeconfig file
      --log-backtrace-at traceLocation   when logging hits line file:N, emit a stack trace (default :0)
      --log-dir string                   If non-empty, write log files in this directory
      --logtostderr                      log to standard error instead of files
      --match-server-version             Require server version to match client version
  -n, --namespace string                 If present, the namespace scope for this CLI request
      --request-timeout string           The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string                    The address and port of the Kubernetes API server
      --stderrthreshold severity         logs at or above this threshold go to stderr (default 2)
      --token string                     Bearer token for authentication to the API server
      --user string                      The name of the kubeconfig user to use
  -v, --v Level                          log level for V logs
      --vmodule moduleSpec               comma-separated list of pattern=N settings for file-filtered logging
```

### SEE ALSO

* [kubectl config](kubectl_config.md)	 - Modify kubeconfig files

###### Auto generated by spf13/cobra on 19-May-2018