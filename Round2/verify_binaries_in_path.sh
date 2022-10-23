#!/bin/bash

echo "Begin: verifying that binaries are in path"
for command in kubectl jq envsubst aws
  do
    which $command &>/dev/null && echo "$command in path" || echo "$command NOT FOUND"
  done
echo "End: verifying that binaries are in path"
