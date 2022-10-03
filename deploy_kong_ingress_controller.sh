#!/bin/bash

kubectl create -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/v2.7.0/deploy/single/all-in-one-dbless.yaml

echo "Done ${0}"
exit 0
