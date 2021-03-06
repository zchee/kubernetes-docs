## kubectl patch

Update field(s) of a resource using strategic merge patch

### Synopsis

Update field(s) of a resource using strategic merge patch, a JSON merge patch, or a JSON patch. 

JSON and YAML formats are accepted. 

Please refer to the models in https://htmlpreview.github.io/?https://github.com/kubernetes/kubernetes/blob/HEAD/docs/api-reference/v1/definitions.html to find if a field is mutable.

```
kubectl patch (-f FILENAME | TYPE NAME) -p PATCH
```

### Examples

```
  # Partially update a node using a strategic merge patch. Specify the patch as JSON.
  kubectl patch node k8s-node-1 -p '{"spec":{"unschedulable":true}}'
  
  # Partially update a node using a strategic merge patch. Specify the patch as YAML.
  kubectl patch node k8s-node-1 -p $'spec:\n unschedulable: true'
  
  # Partially update a node identified by the type and name specified in "node.json" using strategic merge patch.
  kubectl patch -f node.json -p '{"spec":{"unschedulable":true}}'
  
  # Update a container's image; spec.containers[*].name is required because it's a merge key.
  kubectl patch pod valid-pod -p '{"spec":{"containers":[{"name":"kubernetes-serve-hostname","image":"new image"}]}}'
  
  # Update a container's image using a json patch with positional arrays.
  kubectl patch pod valid-pod --type='json' -p='[{"op": "replace", "path": "/spec/containers/0/image", "value":"new image"}]'
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --dry-run                       If true, only print the object that would be sent, without sending it.
  -f, --filename strings              Filename, directory, or URL to files identifying the resource to update
  -h, --help                          help for patch
      --local                         If true, patch will operate on the content of the file, not the server-side resource.
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file.
  -p, --patch string                  The patch to be applied to the resource JSON file.
      --record                        Record current kubectl command in the resource annotation. If set to false, do not record the command. If set to true, record the command. If not set, default to updating the existing annotation value only if one already exists.
  -R, --recursive                     Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
      --type string                   The type of patch being provided; one of [json merge strategic] (default "strategic")
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
