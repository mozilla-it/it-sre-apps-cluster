# it-sre-apps-cluster
This repo contains the code for building an configuring an EKS cluster running apps pertaining to IT SRE team.

## Getting access to Kubernetes
These steps are assuming that you have access to the AWS mozilla-itsre account. If you don't have it, you won't be able to talk to Kubernetes. Also you must have installed `aws-iam-authenticator` as mandated by EKS.

1. Login: `aws-vault exec mozilla-itsre-admin`
2. Get Kubeconfig `aws eks update-kubeconfig --name it-sre-apps-prod-us-west-2 --kubeconfig /tmp/kube-mozilla-itsre'
3. Test the access `export KUBECONFIG=/tmp/kube-mozilla-itsre && kubectl get ns`

Now you should see a list of namespaces, if you don't please submit an issue in this repository.

## Repository structure

### AWS Resources
The creation of the AWS resources is done using Terraform code which is maintained by the Mozilla IT SRE team. This code lives in the terraform folder of this repository.

First of all a VPC is created using the [itsre-deploy module](https://github.com/mozilla-it/itsre-deploy). This module also creates users, creates a DNS zone and configure few things more following Mozilla standards.

Secondly an EKS (Kubernetes) cluster is created using the module in the [reference guides](https://github.com/mozilla-it/sre-guides/tree/master/terraform/eks).


### Kubernetes resources


