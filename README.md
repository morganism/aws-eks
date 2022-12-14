# uses terraform to provision an EKS cluster

[![GitHub Actions Demo](https://github.com/morganism/aws-eks/actions/workflows/github-actions-demo.yml/badge.svg)](https://github.com/morganism/aws-eks/actions/workflows/github-actions-demo.yml)

[![Terraform](https://github.com/morganism/aws-eks/actions/workflows/terraform.yml/badge.svg)](https://github.com/morganism/aws-eks/actions/workflows/terraform.yml)

# ASSUMPTIONS
- an Amazon account
- an IAM user with appropriate permissions : see 'iam_permissions' for permissions used (i did not specify the minimal set)
- [AWS cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Terraform cli](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)


# Terraform commands to provision an EKS cluster 

- terraform init
- terraform plan -out terraform.plan
- terraform apply "terraform.plan"

# Deploy Kong assets

- deploy_kong_ingress_controller.sh
- deploy_echo_service.sh
