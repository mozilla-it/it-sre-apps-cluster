terraform {
  backend "s3" {
    bucket = "mozilla-itsre-terraform-state"
    key    = "us-west-2/it-sre-apps/eks/terraform.tfstate"
    region = "eu-central-1"
  }
}

# An example of a remote state that has a vpc_id
# you can switch the location elsewhere
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket = "mozilla-itsre-terraform-state"
    key    = "us-west-2/it-sre-apps/vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}

