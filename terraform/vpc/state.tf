terraform {
  backend "s3" {
    bucket = "mozilla-itsre-terraform-state"
    key    = "us-west-2/it-sre-apps/vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}
