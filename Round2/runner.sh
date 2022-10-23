#!/bin/bash

echo "Begin: Hello, I am the runner .. I call the shell scripts in the order decalerd here"

SCRIPTS="
install_kubectl.sh
update_awscli.sh
install_jq_envsubst__bash_comp.sh
install_yq.sh
verify_binaries_in_path.sh
enable_kubectl_bash_completion.sh
set_load_balancer_controller_version.sh
cloudFormation.json
eksDemoRole.json
"

for SCRIPT in $SCRIPTS
  do
    echo "$SCRIPT : in list"
  done


echo "End: Bye-Bye, I am the runner .. I have finished calling the shell scripts in the order declared here"
