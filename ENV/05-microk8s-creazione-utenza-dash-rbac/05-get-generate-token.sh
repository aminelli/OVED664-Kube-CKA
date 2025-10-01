#!/bin/bash

# Verifica del token salvato come secret

microk8s kubectl get secret admin-user-secret -n default -o jsonpath="{.data.token}" | base64 -d

echo ""