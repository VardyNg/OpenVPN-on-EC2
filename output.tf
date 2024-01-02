output "ec2_url" {
  value = "${module.ec2_instance.public_dns}"
}

output "ec2_key" {
  value = "${var.ec2_key_name}"
}