#!/bin/bash

CLUSTER_NAME=`aws eks list-clusters | ./getClusterName.rb`

kubectl create -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/v2.7.0/deploy/single/all-in-one-dbless.yaml
aws sts get-caller-identity
aws eks --region eu-west-2 update-kubeconfig --name ${CLUSTER_NAME}
kubectl get svc
helm repo add kong https://charts.konghq.com
helm repo update
helm install kong/kong --generate-name --set ingressController.installCRDs=false
