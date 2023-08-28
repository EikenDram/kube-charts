# Custom helm charts for KubeBuild project

| CHART     | VERSION | APP VERSION | DESCRIPTION
|-----------|---------|-------------|---------------------
| ibmdb2    | 0.1.1   | 11.5.8.0    | [IBM DB2 community edition](https://hub.docker.com/r/ibmcom/db2/)
| rocker    | 0.1.1   | 4.3.1       | [R Studio](https://rocker-project.org/images/versioned/rstudio.html) server
| kube-home | 0.1.4   | 0.2.6       | [KubeHome](https://github.com/EikenDram/kube-home) home page for cluster
| kube-r    | W.I.P.  | W.I.P.      | [KubeR](https://github.com/EikenDram/kube-r) service for cluster

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

Custom helm chart for [RStudio](https://rocker-project.org/images/versioned/rstudio.html) server

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
