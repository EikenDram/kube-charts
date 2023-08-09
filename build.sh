helm lint charts/ibmdb2/
helm lint charts/kube-home/
helm lint charts/kube-r/
helm lint charts/rocker/

helm package charts/ibmdb2 -d ./packages/
helm package charts/rocker -d ./packages/
helm package charts/kube-home -d ./packages/
helm package charts/kube-r -d ./packages/

rm -rf ./test/*

for f in ./packages/*.tgz
do
    echo "$f"
    helm template test $f --output-dir test
done