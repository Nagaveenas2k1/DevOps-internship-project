#!/bin/bash
# install-argocd.sh

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "ArgoCD installed. Use port-forward to access the UI:"
echo "kubectl port-forward svc/argocd-server -n argocd 8080:443"

