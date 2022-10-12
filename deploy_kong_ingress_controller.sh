#!/bin/bash

CLUSTER_NAME=`aws eks list-clusters | ruby -rjson -e "puts JSON.parse(STDIN.read)['clusters']"`
echo "Cluster name is ${CLUSTER_NAME}"

echo "Creating Kong Ingress Controller"
kubectl create -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/v2.7.0/deploy/single/all-in-one-dbless.yaml

echo "Updating kubeconfig"
aws sts get-caller-identity
aws eks --region eu-west-2 update-kubeconfig --name ${CLUSTER_NAME}

echo "Getting service info"
kubectl get svc

echo "Adding Helm charts and namespace"
helm repo add kong https://charts.konghq.com
helm repo update
helm install kong/kong --generate-name --set ingressController.installCRDs=false
