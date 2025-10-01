# Esempi utilizzo kubectl

```bash

# Crea un pod
kubectl run frontend --image=nginx --port=80 -n poste-01

# Edit yaml manifest del pod (editor vim)
kubectl edit pod frontend -n poste-01

# Elimina il pod
kubectl delete pod frontend -n poste-01



```