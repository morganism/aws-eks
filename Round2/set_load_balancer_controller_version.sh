#!/bin/bash

echo "Begin: setting load balancer controller version"
echo 'export LBC_VERSION="v2.4.1"' >>  ~/.bash_profile
echo 'export LBC_CHART_VERSION="1.4.1"' >>  ~/.bash_profile
.  ~/.bash_profile

echo "End: setting load balancer controller version"
