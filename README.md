# falco-tetragon-anomaly-detection
anomaly detection wiht falco and tetragon

Falco Install  
```
helm repo add falcosecurity https://falcosecurity.github.io/charts
helm repo update
```
  
```
helm install falco falcosecurity/falco \
    --namespace falco --create-namespace \
    --set driver.kind=ebpf \
    --set tty=true
```
  

Tetragon Install  
```
helm repo add cilium https://helm.cilium.io/
helm repo update
```
  
```
helm install tetragon cilium/tetragon \
    --namespace kube-system \
    --set agent.collector.host=localhost \
    --set agent.collector.port=8090 # gRPC
```
  
Falco and Tetragon connect  
Configure Falco Rule  
Simulation and Confirm Detection  
Advanced Configuration  
