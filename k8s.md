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

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml
kubectl get pods -n ingress-nginx

kubectl port-forward deployment/postgres-deployment 5432:5432

git rev-parse HEAD (\$GIT_SHA)
env: - "SHA=\$(git rev-parse HEAD)"

choco install -y skaffold
skaffold dev
skaffold delete
