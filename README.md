# Custom helm charts for KubeBuild project

- `ibmdb2` -  IBM DB2 community edition
- `rocker` - R Studio server
- `kube-home` - KubeHome home page for cluster
- `kube-r` - KubeR service for cluster

## Build charts

```sh
sh build.sh
```

## Upload chart to gitea

```
helm cm-push <chart>-<version>.tgz gitea
```

## Install chart

```
helm install <name> gitea/<chart> -n <namespace> --create-namespace
```

## Uninstall chart

```
helm uninstall <name> -n <namespace>
k delete ns <namespace>
```