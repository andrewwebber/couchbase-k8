# Couchbase K8 - Couchbase on Kubernetes

## Prerequisites
- Kubernetes 1.6+ cluster up and running
- kubectl already setup to point to the cluster
- Kubernetes cluster has a [dynamic storage provider](https://kubernetes.io/docs/concepts/storage/storage-classes/)
- Helm client is locally installed and cluster is initialized

## Getting started

### Helm Values
Review the [helm values](./couchbase/values.yaml) for your Couchbase cluster

### Deploy a master
```bash
helm install -n etcd -f ./etcd/values.yaml ./etcd
helm install -n couchbase -f ./couchbase/values.yaml ./couchbase
```

### Scale the Couchbase cluster
```bash
kubectl scale statefulset/couchbase-worker --replicas=3
```

### Couchbase administration dashboard
```bash
kubectl port-forward couchbase-worker-0 8091
```

Open the [dashboard](http://127.0.0.1:8091)
