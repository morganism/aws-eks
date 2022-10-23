#!/bin/bash

aws iam create-access-key --user-name EKSAdmin | tee /tmp/EKSAdmin.json
aws iam create-access-key --user-name EKSDev | tee /tmp/EKSDev.json
aws iam create-access-key --user-name EKSInteg | tee /tmp/EKSInteg.json

