## kubectl config view

Display merged kubeconfig settings or a specified kubeconfig file

### Synopsis

Display merged kubeconfig settings or a specified kubeconfig file. 

You can use --output jsonpath={...} to extract specific values using a jsonpath expression.

```
kubectl config view [flags]
```

### Examples

```
  # Show merged kubeconfig settings.
  kubectl config view
  
  # Show merged kubeconfig settings and raw certificate data.
  kubectl config view --raw
  
  # Get the password for the e2e user
  kubectl config view -o jsonpath='{.users[?(@.name == "e2e")].user.password}'
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --flatten                       Flatten the resulting kubeconfig file into self-contained output (useful for creating portable kubeconfig files)
  -h, --help                          help for view
      --merge tristate[=true]         Merge the full hierarchy of kubeconfig files (default true)
      --minify                        Remove all information not used by current-context from the output
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file. (default "yaml")
      --raw                           Display raw byte data
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
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
      --kubeconfig string              use a particular kubeconfig file
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

* [kubectl config](kubectl_config.md)	 - Modify kubeconfig files

###### Auto generated by spf13/cobra on 12-Dec-2018
