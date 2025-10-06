#!/bin/bash

kubectl apply -f nodeport-deploy.yaml


# DNS:
# test-svc.poste-01.svc.cluster.local


# Comandi nel container di prova:
# apt-get update
# apt-get install -y iputils-ping net-tools wget nano htop traceroute

# Comandi da Host:
# kubectl get pods  -n poste-01
# kubectl describe pod prova-pod  -n poste-01
# kubectl get deployments -n poste-01
# kubectl get services -n poste-01
# kubectl get pods -n poste-01
# kubectl get pod test-deploy-56c6f44488-6cx5g -o wide -n poste-01
# kubectl port-forward test-deploy-56c6f44488-6cx5g 8080:8080 -n poste-01 --address 0.0.0.0


