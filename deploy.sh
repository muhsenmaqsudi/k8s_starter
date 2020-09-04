docker build -t muhsenmaqsudi/multi-client:latest -t muhsenmaqsudi/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t muhsenmaqsudi/multi-server -t muhsenmaqsudi/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t muhsenmaqsudi/multi-worker -t muhsenmaqsudi/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push muhsenmaqsudi/multi-client:latest
docker push muhsenmaqsudi/multi-server:latest
docker push muhsenmaqsudi/multi-worker:latest

docker push muhsenmaqsudi/multi-client:$SHA
docker push muhsenmaqsudi/multi-server:$SHA
docker push muhsenmaqsudi/multi-worker:$SHA

kubectl apply -f k8s

kubectl set image deployments/server-deployment server=muhsenmaqsudi/multi-server:$SHA
kubectl set image deployments/server-deployment server=muhsenmaqsudi/multi-client:$SHA
kubectl set image deployments/server-deployment server=muhsenmaqsudi/multi-worker:$SHA