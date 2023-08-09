# Custom helm charts for KubeBuild project

- IBM DB2 community edition
- R Studio server
- KubeHome home page for cluster
- KubeR service for cluster

## Build chart

```
helm package ./charts/<chart>/ -d ./packages/
```

## Check chart

```
helm lint charts/<chart>/

helm template test ./packages/<chart>-<version>.tgz --output-dir test
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