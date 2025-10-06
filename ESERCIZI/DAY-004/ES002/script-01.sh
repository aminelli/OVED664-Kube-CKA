#!/bin/bash

kubectl apply -f clusterip-deploy.yaml


# DNS:
# test-svc.poste-01.svc.cluster.local


# Comandi nel container di prova:
# apt-get update
# apt-get install -y iputils-ping net-tools wget nano htop traceroute

# DComandi da Host:
# kubectl get pods  -n poste-01
# kubectl describe pod echoserver-pod  -n poste-01
# kubectl get deployments -n poste-01
# kubectl get services -n poste-01
# kubectl get pods -n poste-01
# kubectl get pod test-deploy-56c6f44488-6cx5g -o wide -n poste-01


