# Custom helm charts for KubeBuild project

| CHART      | VERSION | APP VERSION | DESCRIPTION
|------------|---------|-------------|---------------------
| ibmdb2     | 0.1.1   | 11.5.8.0    | [IBM DB2 community edition](https://hub.docker.com/r/ibmcom/db2/)
| rocker     | 0.1.1   | 4.3.1       | [R Studio](https://rocker-project.org/images/versioned/rstudio.html) server
| kube-home  | 0.2.1   | 0.3.3       | [KubeHome](https://github.com/EikenDram/kube-home) home page for cluster
| kube-r     | W.I.P.  | W.I.P.      | [KubeR](https://github.com/EikenDram/kube-r) service for cluster
| kube-utils | W.I.P.  | W.I.P.      | [KubeUtils](https://github.com/EikenDram/kube-utils) wep app for cluster

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

Configuration [values.yaml](charts/ibmdb2/values.yaml):

| VALUE      | DESCRIPTION
|------------|--------------------
| **db2**    |
| instance   | IBM DB2 instance/admin name
| password   | IBM DB2 instance/admin password
| port       | exposed NodePort for IBM DB2
| storage    | storage size
| **repodb** |
| enable     | create dmc repository database
| dbname     | name of dmc repository database

## R Studio server

Custom helm chart for [RStudio](https://rocker-project.org/images/versioned/rstudio.html) server

```sh
helm install $name eikendram/rocker --version $version -f $values_yaml --namespace $namespace --create-namespace
```

Configuration [values.yaml](charts/rocker/values.yaml):

| VALUE       | DESCRIPTION
|-------------|--------------------
| **rocker**  |
| password    | password for accessing server (username is `rstudio`)
| **storage** |
| config      | storage size for configuration files
| workspace   | storage size for workspace

## KubeHome

Helm chart for [KubeHome](https://github.com/EikenDram/kube-home)

```sh
helm install $name eikendram/kube-home --version $version -f $values_yaml --namespace $namespace --create-namespace
```

Configuration [values.yaml](charts/kube-home/values.yaml):

| VALUE         | DESCRIPTION
|---------------|--------------------
| **kube-home** |
| favicon       | name of `ConfigMap` with `favicon.ico` containing application icon
| img           | name of `ConfigMap` containing `img` directory
| config        | json data with KubeHome configuration

## KubeR

Helm chart for [KubeR](https://github.com/EikenDram/kube-r)

```sh
helm install $name eikendram/kube-r --version $version -f $values_yaml --namespace $namespace --create-namespace
```

Configuration [values.yaml](charts/kube-r/values.yaml):

| VALUE      | DESCRIPTION
|------------|--------------------

## KubeUtils

Helm chart for [KubeUtils](https://github.com/EikenDram/kube-utils)

```sh
helm install $name eikendram/kube-utils --version $version -f $values_yaml --namespace $namespace --create-namespace
```

Configuration [values.yaml](charts/kube-utils/values.yaml):

| VALUE      | DESCRIPTION
|------------|--------------------

## Build charts for testing

```sh
sh build.sh
```


