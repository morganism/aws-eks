#!/bin/bash

helm completion bash >> ~/.bash_completion
#. /etc/profile.d/bash_completion.sh
. ~/.bash_completion
source <(helm completion bash)

