## kubectl proxy

Run a proxy to the Kubernetes API server

### Synopsis

Creates a proxy server or application-level gateway between localhost and the Kubernetes API Server. It also allows serving static content over specified HTTP path. All incoming data enters through one port and gets forwarded to the remote kubernetes API Server port, except for the path matching the static content path.

```
kubectl proxy [--port=PORT] [--www=static-dir] [--www-prefix=prefix] [--api-prefix=prefix]
```

### Examples

```
  # To proxy all of the kubernetes api and nothing else, use:
  
  $ kubectl proxy --api-prefix=/
  
  # To proxy only part of the kubernetes api and also some static files:
  
  $ kubectl proxy --www=/my/files --www-prefix=/static/ --api-prefix=/api/
  
  # The above lets you 'curl localhost:8001/api/v1/pods'.
  
  # To proxy the entire kubernetes api at a different root, use:
  
  $ kubectl proxy --api-prefix=/custom/
  
  # The above lets you 'curl localhost:8001/custom/api/v1/pods'
  
  # Run a proxy to kubernetes apiserver on port 8011, serving static content from ./local/www/
  kubectl proxy --port=8011 --www=./local/www/
  
  # Run a proxy to kubernetes apiserver on an arbitrary local port.
  # The chosen port for the server will be output to stdout.
  kubectl proxy --port=0
  
  # Run a proxy to kubernetes apiserver, changing the api prefix to k8s-api
  # This makes e.g. the pods api available at localhost:8001/k8s-api/v1/pods/
  kubectl proxy --api-prefix=/k8s-api
```

### Options

```
      --accept-hosts string     Regular expression for hosts that the proxy should accept. (default "^localhost$,^127\\.0\\.0\\.1$,^\\[::1\\]$")
      --accept-paths string     Regular expression for paths that the proxy should accept. (default "^.*")
      --address string          The IP address on which to serve on. (default "127.0.0.1")
      --api-prefix string       Prefix to serve the proxied API under. (default "/")
      --disable-filter          If true, disable request filtering in the proxy. This is dangerous, and can leave you vulnerable to XSRF attacks, when used with an accessible port.
  -h, --help                    help for proxy
      --keepalive duration      keepalive specifies the keep-alive period for an active network connection. Set to 0 to disable keepalive.
  -p, --port int                The port on which to run the proxy. Set to 0 to pick a random port. (default 8001)
      --reject-methods string   Regular expression for HTTP methods that the proxy should reject (example --reject-methods='POST,PUT,PATCH').  (default "^$")
      --reject-paths string     Regular expression for paths that the proxy should reject. Paths specified here will be rejected even accepted by --accept-paths. (default "^/api/.*/pods/.*/exec,^/api/.*/pods/.*/attach")
  -u, --unix-socket string      Unix socket on which to run the proxy.
  -w, --www string              Also serve static files from the given directory under the specified prefix.
  -P, --www-prefix string       Prefix to serve static files under, if static file directory is specified. (default "/static/")
```

### Options inherited from parent commands

```
      --as string                      Username to impersonate for the operation
      --as-group stringArray           Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --cache-dir string               Default HTTP cache directory (default "/Users/zchee/.kube/http-cache")
      --certificate-authority string   Path to a cert file for the certificate authority
      --client-certificate string      Path to a client certificate file for TLS
      --client-key string              Path to a client key file for TLS
      --cluster string                 The name of the kubeconfig cluster to use
      --context string                 The name of the kubeconfig context to use
      --insecure-skip-tls-verify       If true, the server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kubeconfig string              Path to the kubeconfig file to use for CLI requests.
      --match-server-version           Require server version to match client version
  -n, --namespace string               If present, the namespace scope for this CLI request
      --profile string                 Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) (default "none")
      --profile-output string          Name of the file to write the profile to (default "profile.pprof")
      --request-timeout string         The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string                  The address and port of the Kubernetes API server
      --token string                   Bearer token for authentication to the API server
      --user string                    The name of the kubeconfig user to use
```

### SEE ALSO

* [kubectl](kubectl.md)	 - kubectl controls the Kubernetes cluster manager

###### Auto generated by spf13/cobra on 12-Dec-2018
