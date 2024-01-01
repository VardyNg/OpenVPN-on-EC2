variable "app_name" {
  type    = string
  default = "openvpn-on-ec2"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ec2_key_name" {
  type    = string
  default = "user1"
}

variable "ec2_ami_id" {
  type = string
}