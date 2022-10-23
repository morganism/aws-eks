#!/bin/bash

aws iam create-user --user-name EKSAdmin
aws iam create-user --user-name EKSDev
aws iam create-user --user-name EKSInteg

aws iam add-user-to-group --group-name k8sAdmin --user-name EKSAdmin
aws iam add-user-to-group --group-name k8sDev --user-name EKSDev
aws iam add-user-to-group --group-name k8sInteg --user-name EKSInteg


aws iam get-group --group-name k8sAdmin
aws iam get-group --group-name k8sDev
aws iam get-group --group-name k8sInteg


