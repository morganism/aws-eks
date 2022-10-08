# uses terraform to provision an EKS cluster

[![GitHub Actions Demo](https://github.com/morganism/aws-eks/actions/workflows/github-actions-demo.yml/badge.svg)](https://github.com/morganism/aws-eks/actions/workflows/github-actions-demo.yml)

you need to have an IAM user with the appropriate permissions

@TODO 
 - add the minimal set of permissions, policies, roles, groups and whatever IAM setup is required
 - add the instructions for installing required software
   - aws cli
   - terraform cli
   - kubectl

Note: This set of [mainly] terraform files was taken from previous bespoke projects to 
      launch special purpose VPCs or stacks. The Kubernetes portion is based on a proof of concept
      to determine the cost and effort required to be Cloud agnostic by containerising 
      a service running in the AWS cloud and porting it to GCP. 

      The resulting Frankencode is what you have here. 
