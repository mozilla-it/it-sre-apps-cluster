# This assume your vpc_id output is called vpc_id
data "aws_vpc" "vpc" {
  id = "${data.terraform_remote_state.vpc.vpc_id}"
}
