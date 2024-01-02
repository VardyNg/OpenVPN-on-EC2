locals {
  user_data_content = templatefile("user_data.sh.template", {
    AUTO_INSTALL = "y"
  })
}

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
  
  name = "${var.app_name}-openvpn"

  instance_type               = var.instance_type
  key_name                    = var.ec2_key_name
  monitoring                  = true
  vpc_security_group_ids      = [module.vpn-service-security-group.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  ami                         = var.ec2_ami_id[var.region]
  user_data                   = local.user_data_content
  associate_public_ip_address = true
}