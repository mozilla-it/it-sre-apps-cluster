variable "environment" {
  default = "prod"
}

variable "region" {
  default = "us-west-2"
}

variable "cluster_version" {
  default = "1.13"
}

variable "lifecycled_version" {
  default = "v3.0.2"
}

variable "prefix" {
  default = "it-sre-apps"
}

variable "lifecycled_log_group" {
  default = "/aws/lifecycled"
}
