output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "account_name" {
  value = "${var.account_name}"
}

output "account_domain" {
  value = "${module.dns.master_zone_name}"
}

output "nameservers" {
  value = "${module.dns.master_zone_nameservers}"
}

output "hosted_zone_id" {
  value = "${module.dns.hosted_zone_id}"
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets" {
  value = "${module.vpc.private_subnets}"
}

