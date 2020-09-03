kubectl apply -f k8s
kubectl remove -f k8s
kubectl delete deployment client-deployment

kubectl get nodes
kubectl get pods
kubectl get services
kubectl get deployments

kubectl logs server-deployment-\*

kubectl set image deplyoment/client-deployment client=muhsenmaqsudi/multi-client:v2

kubectl get storageclass
kubectl get pv (persistent volume)
kubectl get pvc

kubectl create secret generic pgpassword --from-literal PGPASSWORD=12345asdf
kubectl get secrets