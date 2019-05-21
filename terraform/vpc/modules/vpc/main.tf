provider "aws" {
  version = "~> 1"
  region  = "${var.region}"
}

data "aws_availability_zones" "available" {}

locals {
  az_placement = "${slice(data.aws_availability_zones.available.names, 0, var.az_placement)}"
}

# NOTE: modules don't accept count.index so i have no choice but to do this
module "subnets" {
  source   = "./subnets"
  enabled  = "${var.enable_vpc}"
  vpc_cidr = "${var.vpc_cidr}"
  newbits  = "${var.newbits}"
  azs      = "${local.az_placement}"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "1.64.0"

  create_vpc             = "${var.enable_vpc}"
  name                   = "${var.name}"
  azs                    = "${local.az_placement}"
  cidr                   = "${var.vpc_cidr}"
  enable_nat_gateway     = "${var.enable_nat_gateway}"
  single_nat_gateway     = "${var.single_nat_gateway}"
  one_nat_gateway_per_az = "${var.one_nat_gateway_per_az}"
  private_subnets        = "${module.subnets.private_subnets}"
  public_subnets         = "${module.subnets.public_subnets}"

  # VPC endpoint for S3
  enable_s3_endpoint = "${var.enable_s3_endpoint}"

  # VPC endpoint for DynamoDB
  enable_dynamodb_endpoint = "${var.enable_dynamodb_endpoint}"

  tags = "${var.tags}"

  vpc_tags = {
    Name = "${var.name}-vpc"
  }

  # We have no idea if the vpc will host an eks
  # cluster but we put this here anyway
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "true"
  }
}
