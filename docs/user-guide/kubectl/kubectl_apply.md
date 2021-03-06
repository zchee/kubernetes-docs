## kubectl apply

Apply a configuration to a resource by filename or stdin

### Synopsis

Apply a configuration to a resource by filename or stdin. The resource name must be specified. This resource will be created if it doesn't exist yet. To use 'apply', always create the resource initially with either 'apply' or 'create --save-config'. 

JSON and YAML formats are accepted. 

Alpha Disclaimer: the --prune functionality is not yet complete. Do not use unless you are aware of what the current state is. See https://issues.k8s.io/34274.

```
kubectl apply -f FILENAME
```

### Examples

```
  # Apply the configuration in pod.json to a pod.
  kubectl apply -f ./pod.json
  
  # Apply the JSON passed into stdin to a pod.
  cat pod.json | kubectl apply -f -
  
  # Note: --prune is still in Alpha
  # Apply the configuration in manifest.yaml that matches label app=nginx and delete all the other resources that are not in the file and match label app=nginx.
  kubectl apply --prune -f manifest.yaml -l app=nginx
  
  # Apply the configuration in manifest.yaml and delete all the other configmaps that are not in the file.
  kubectl apply --prune -f manifest.yaml --all --prune-whitelist=core/v1/ConfigMap
```

### Options

```
      --all                           Select all resources in the namespace of the specified resource types.
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --cascade                       If true, cascade the deletion of the resources managed by this resource (e.g. Pods created by a ReplicationController).  Default true. (default true)
      --dry-run                       If true, only print the object that would be sent, without sending it.
  -f, --filename strings              that contains the configuration to apply
      --force                         Only used when grace-period=0. If true, immediately remove resources from API and bypass graceful deletion. Note that immediate deletion of some resources may result in inconsistency or data loss and requires confirmation.
      --grace-period int              Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to 1 for immediate shutdown. Can only be set to 0 when --force is true (force deletion). (default -1)
  -h, --help                          help for apply
      --include-uninitialized         If true, the kubectl command applies to uninitialized objects. If explicitly set to false, this flag overrides other flags that make the kubectl commands apply to uninitialized objects, e.g., "--all". Objects with empty metadata.initializers are regarded as initialized.
      --openapi-patch                 If true, use openapi to calculate diff when the openapi presents and the resource can be found in the openapi spec. Otherwise, fall back to use baked-in types. (default true)
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file.
      --overwrite                     Automatically resolve conflicts between the modified and live configuration by using values from the modified configuration (default true)
      --prune                         Automatically delete resource objects, including the uninitialized ones, that do not appear in the configs and are created by either apply or create --save-config. Should be used with either -l or --all.
      --prune-whitelist stringArray   Overwrite the default whitelist with <group/version/kind> for --prune
      --record                        Record current kubectl command in the resource annotation. If set to false, do not record the command. If set to true, record the command. If not set, default to updating the existing annotation value only if one already exists.
  -R, --recursive                     Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.
  -l, --selector string               Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)
      --server-dry-run                If true, request will be sent to server with dry-run flag, which means the modifications won't be persisted. This is an alpha feature and flag.
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
      --timeout duration              The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object
      --validate                      If true, use a schema to validate the input before sending it (default true)
      --wait                          If true, wait for resources to be gone before returning. This waits for finalizers.
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
* [kubectl apply edit-last-applied](kubectl_apply_edit-last-applied.md)	 - Edit latest last-applied-configuration annotations of a resource/object
* [kubectl apply set-last-applied](kubectl_apply_set-last-applied.md)	 - Set the last-applied-configuration annotation on a live object to match the contents of a file.
* [kubectl apply view-last-applied](kubectl_apply_view-last-applied.md)	 - View latest last-applied-configuration annotations of a resource/object

###### Auto generated by spf13/cobra on 12-Dec-2018
