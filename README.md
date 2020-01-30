# Kubernetes Presentation

This project is home to a reveal.js presentation which talks through the basics concepts and a high level overview of using Kubernetes.

## To run this presentation locally

Simply open `index.html` in a browser of your choice or alternatively run `npm start` from the root of the project.

## Run this presentation on minikube

- Start up minikube.
- `eval $(minikube docker-env)`

Run the rest of these commands from project root.
`docker build . -t k8s-presentation:v1`
`kubectl create namespace my-presentation`
`kubectl config set-context --current --namespace=my-presentation`
`kubectl create secret generic presentation-secret --from-literal=secret-password=P4ssw0rd`
`kubectl apply -k kustomize`
`kubectl proxy`

By default this should then be accessable through:
http://localhost:8001/api/v1/namespaces/my-presentation/services/k8s-presentation/proxy
