module "vpn-service-security-group" {
  source = "terraform-aws-modules/security-group/aws"
  
  name        = "${var.app_name}-openvpn"
  description = "Security group for OpenVPN service"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "openvpn tcp ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 1194
      to_port     = 1194
      protocol    = "udp"
      description = "openvpn udp ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "ssh port"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  # Allow access to all ports from the VPC
  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "all ports"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}