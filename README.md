# Custom helm charts for KubeBuild project

- IBM DB2 community edition helm chart

Helm chart for deploying IBM DB2 community edition in kubernetes cluster

## Build chart

```
helm package ./charts/ibmdb2/ -d ./packages/
```

## Check chart

```
helm lint charts/ibmdb2/

helm template test ./packages/ibmdb2-0.1.0.tgz --output-dir test
```

## Upload chart to gitea

```
helm cm-push ibmdb2-0.1.0.tgz gitea
```

## Install chart

```
helm install db2 gitea/ibmdb2 -n ibmdb2 --create-namespace
```

## Uninstall chart

```
helm uninstall db2 -n ibmdb2
k delete ns ibmdb2
```