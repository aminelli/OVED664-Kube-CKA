#!/bin/bash

# L'effetto di questo comando è quello di creare un Pod che esegue un container basato sull'immagine echoserver.
# L'immagine echoserver è un semplice server web che risponde alle richieste HTTP sulla 8080
# Automaticamente, kubernetes, crea la coppia chiave valore run=echoserver come label sul pod
kubectl run echoserver --image=k8s.gcr.io/echoserver:1.10 --restart=Never --port=8080 -n poste-01


