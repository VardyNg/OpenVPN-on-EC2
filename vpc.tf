module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  
  name = var.app_name
  cidr = "10.0.0.0/16"

  azs            = ["${var.region}a"] # use one AZ
  public_subnets = ["10.0.1.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false
}