# uses terraform to provision an EKS cluster

[![GitHub Actions Demo](https://github.com/morganism/aws-eks/actions/workflows/github-actions-demo.yml/badge.svg)](https://github.com/morganism/aws-eks/actions/workflows/github-actions-demo.yml)

# ASSUMPTIONS
- an Amazon account
- an IAM user with appropriate permissions
- [AWS cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Terraform cli](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)


# Terraforn commands to provision an EKS cluster 

terraform init
terraform plan -out terraform.plan
terraform apply "terraform.plan"

