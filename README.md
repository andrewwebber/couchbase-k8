# Couchbase K8 - Couchbase on Kubernetes

## Features
- Auto join of new Couchbase members
- Auto graceful failover of draining Couchbase members

## Prerequisites
- Kubernetes 1.6+ cluster up and running
- kubectl already setup to point to the cluster
- Kubernetes cluster has a [dynamic storage provider](https://kubernetes.io/docs/concepts/storage/storage-classes/)
- Helm client is locally installed and cluster is initialized

## Getting started

### Helm Values
Review the [Etcd](./etcd/values.yaml) and [Couchbase](./couchbase/values.yaml) helm values for your Couchbase cluster
- Check the name of your storage classes

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
