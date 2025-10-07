#!/bin/bash
echo "========================================================================"
kubectl apply -f calico-policy.yaml
echo "========================================================================"
echo ""



# kubectl describe daemonset calico-node -n kube-system | grep Image:
# kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.1/manifests/crds.yaml
# kubectl apply -f calico-crds.yaml
