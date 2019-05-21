# it-sre-apps-cluster
This repo contains the code for building an configuring an EKS cluster running apps pertaining to IT SRE team.

## AWS Resources
The creation of the AWS resources is done using Terraform code which is maintained by the Mozilla IT SRE team. This code lives in the terraform folder of this repository.

First of all a VPC is created using the [itsre-deploy module](https://github.com/mozilla-it/itsre-deploy). This module also creates users, creates a DNS zone and configure few things more following Mozilla standards.

Secondly an EKS (Kubernetes) cluster is created using the module in the [reference guides](https://github.com/mozilla-it/sre-guides/tree/master/terraform/eks).


## Kubernetes resources


## Deploying applications into the cluster


