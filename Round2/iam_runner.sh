#!/bin/bash


create_iam_roles.sh
create_iam_groups.sh
create_iam_users.sh
create_iam_access_keys.sh

configureKubernetesRBAC.sh

update_config_map.sh
