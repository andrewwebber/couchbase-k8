all: deploy

deploy: deploy-etcd deploy-couchbase

deploy-etcd:
	@helm install -n etcd -f ./etcd/values.yaml ./etcd

deploy-couchbase:
	@helm install -n couchbase -f ./couchbase/values.yaml ./couchbase
