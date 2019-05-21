variable "enabled" {
  default = 1
}

variable "region" {
  default = "us-west-2"
}

variable "cloudtrail_bucket" {}

variable "cloudtrail_sns_topic" {}

variable "notify_address" {
  default = "infra-aws@mozilla.com"
}
