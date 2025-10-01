#!/bin/bash

kubectl delete -f nginx-deployment.yaml
kubectl delete -f app-stack/
kubectl delete -f app-stack2/all.yaml