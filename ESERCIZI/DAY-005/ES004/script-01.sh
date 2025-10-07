#!/bin/bash
echo "========================================================================"
kubectl apply -f vol-01-effimero.yaml
kubectl apply -f vol-02-effimero-cache.yaml
kubectl apply -f vol-03-effimero-configmap.yaml
echo "========================================================================"
echo ""

 