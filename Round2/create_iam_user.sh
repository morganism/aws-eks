#!/bin/bash

aws iam create-group --group-name Admins
aws iam attach-group-policy --group-name Admins --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

aws iam create-user --user-name eksuser
aws iam add-user-to-group --user-name eksuser --group-name Admins
