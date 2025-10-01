#!/bin/bash

# If RBAC is not enabled access the dashboard using the token 
# retrieved with:
# 
# microk8s kubectl describe secret -n kube-system 
# microk8s-dashboard-token
# 
# Use this token in the https login UI of the kubernetes-dashboard 
# service.
# 
# In an RBAC enabled setup (microk8s enable RBAC) you need to create 
# a user with restricted
# permissions as shown in:
# https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md

echo " CREAZIONE ACCOUNT"
microk8s kubectl apply -f 01-service-account.yaml
echo "==============================="
echo "==============================="

echo " CREAZIONE ROLE BINDING e ROLE e ASSOCIAZIONE UTENZA"
microk8s kubectl apply -f 02-cluster-role-binding.yaml
echo "==============================="
echo "==============================="

echo " GENERAZIONE TOKEN"
source ./03-generate-token.sh
echo "==============================="
echo "==============================="

echo " SALVIAMO IL TOKEN IN UN SECRET"
microk8s kubectl apply -f 04-secret.yaml
echo "==============================="
echo "==============================="

echo " TEST SECRET"
source ./05-get-generate-token.sh
echo " "
echo "==============================="
echo "==============================="

echo ""


