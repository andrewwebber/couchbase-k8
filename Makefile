NAMESPACE = "default"

all: deploy

deploy: deploy-etcd deploy-couchbase

deploy-etcd:
	@helm --tiller-namespace=$(NAMESPACE) install -n etcd -f ./etcd/values.yaml ./etcd

deploy-couchbase:
	@helm --tiller-namespace=$(NAMESPACE) install -n couchbase -f ./couchbase/values.yaml ./couchbase
