#!/bin/bash

echo "Begin: enabling kubectl bash_completion"
kubectl completion bash >>  ~/.bash_completion
. /etc/profile.d/bash_completion.sh
. ~/.bash_completion

echo "End: enabling kubectl bash_completion"

