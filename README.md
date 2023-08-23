# Custom helm charts for KubeBuild project

- `ibmdb2` -  IBM DB2 community edition
- `rocker` - R Studio server
- `kube-home` - KubeHome home page for cluster
- `kube-r` - KubeR service for cluster

## Helm repository

```sh
helm repo add eikendram https://eikendram.github.io/kube-charts
helm repo update
```

## IBM DB2

Custom helm chart for the [IBM DB2 community edition docker image](https://hub.docker.com/r/ibmcom/db2/)

```sh
helm install $name eikendram/ibmdb2 --version $version -f $values_yaml --namespace $namespace --create-namespace
```

## R Studio server

W.I.P

```sh
helm install $name eikendram/rocker --version $version -f $values_yaml --namespace $namespace --create-namespace
```

## KubeHome

Helm chart for [KubeHome](https://github.com/EikenDram/kube-home)

```sh
helm install $name eikendram/kube-home --version $version -f $values_yaml --namespace $namespace --create-namespace
```

## KubeR

Helm chart for [KubeR](https://github.com/EikenDram/kube-r)

```sh
helm install $name eikendram/kube-r --version $version -f $values_yaml --namespace $namespace --create-namespace
```

## Build charts for testing

```sh
sh build.sh
```