#!/bin/bash

# L'effetto di questo comando è quello di creare un Pod che esegue un container basato sull'immagine echoserver.
# L'immagine echoserver è un semplice server web che risponde alle richieste HTTP sulla 8080
# Automaticamente, kubernetes, crea la coppia chiave valore run=echoserver come label sul pod
kubectl run echoserver --image=k8s.gcr.io/echoserver:1.10 --restart=Never --port=8080 -n poste-01

# L'effetto di questo comando è quello di creare un servizio di tipo ClusterIP chiamato echoserver
# che espone il pod echoserver sulla porta 80 del servizio, mappandola alla porta 8080 del pod.
# In questo modo, le richieste inviate alla porta 80 del servizio verranno inoltrate alla porta 8080 del pod echoserver.
# Automaticamente è stata creata anche una label selector che associa il servizio al pod tramite la label run=echoserver
# Automaticamente è stato creata una label sul servizio: "app=echoserver"
kubectl create service clusterip echoserver --tcp 80:8080 -n poste-01

kubectl patch service echoserver -n poste-01 -p '{"spec": {"selector": {"run": "echoserver"}}}'


# kubectl patch service echoserver --type=json -p='[{"op": "remove", "path": "/spec/selector/app"}]'

kubectl get services -n poste-01
 