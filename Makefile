.DEFAULT_GOAL = all
KUBERNETES_REPO := k8s.io/kubernetes

.PHONY: all
all: clean docs hash
	@${RM} -r /tmp/gopath

.PHONY: clean/docs
clean/docs:
	@${RM} -r ./docs

.PHONY: clean/kubernetes
clean/kubernetes:
	@${RM} -r /tmp/gopath

.PHONY: clean
clean: clean/docs clean/kubernetes

.PHONY: /tmp/gopath/src/$(KUBERNETES_REPO)
/tmp/gopath/src/$(KUBERNETES_REPO): clean/kubernetes
	@git clone --depth 1 --branch master --single-branch https://github.com/kubernetes/kubernetes.git /tmp/gopath/src/$(KUBERNETES_REPO)

.PHONY: fetch
fetch: /tmp/gopath/src/$(KUBERNETES_REPO)

.PHONY: /tmp/gopath/src/$(KUBERNETES_REPO)/docs
/tmp/gopath/src/$(KUBERNETES_REPO)/docs: fetch
	@cd /tmp/gopath/src/$(KUBERNETES_REPO); \
		GOPATH=/tmp/gopath/src/$(KUBERNETES_REPO) ./hack/generate-docs.sh

.PHONY: gen
gen: /tmp/gopath/src/$(KUBERNETES_REPO)/docs

.PHONY: hash
hash:
	@cd /tmp/gopath/src/$(KUBERNETES_REPO); \
		printf "%s\\n\\n" $$(git hash)

.PHONY: docs
docs: gen
	@cp -r /tmp/gopath/src/$(KUBERNETES_REPO)/docs .

docs/commit:
	@git add ./docs
	@git commit -m "docs: update kubernetes docs from kubernetes/kubernetes@$(shell make hash)"
