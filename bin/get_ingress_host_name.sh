#!/bin/bash

$(kubectl get -o jsonpath="{.status.loadBalancer.ingress[0].hostname}" service -n default)
