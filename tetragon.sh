helm repo add cilium https://helm.cilium.io/
helm repo update

helm install tetragon cilium/tetragon \
    --namespace kube-system \
    --set agent.collector.host=localhost \
    --set agent.collector.port=8090
