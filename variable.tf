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
  type = map
  # The following list is sourced from https://cloud-images.ubuntu.com/locator/ec2/
  # Jammy Jellyfish22.04 LTS	arm64
  default = {
    "ap-northeast-1": "ami-01044a7484292fef7"
    "ap-southeast-1": "ami-05f8c2ee58e71f8e6"
    "sa-east-1": "ami-063c7dd3218e07c07"
    "ap-northeast-2": "ami-0bf8362da831d2394"
    "ap-southeast-4": "ami-02190f00eb144037e"
    "ap-southeast-3": "ami-0eef232885701f631"
    "me-south-1": "ami-0a45bc9705f19693b"
    "us-east-2": "ami-0748d13ffbc370c2b"
    "us-east-1": "ami-05d47d29a4c2d19e1"
    "ap-northeast-3": "ami-0ef3899bdec163193"
    "ap-southeast-2": "ami-0b71cd1a5da0c93ec"
    "ap-south-1": "ami-077885f59ecb77b84"
    "us-west-2": "ami-0a24e6e101933d294"
    "eu-west-1": "ami-0a1b36900d715a3ad"
    "eu-central-1": "ami-0fc02b454efabb390"
    "eu-west-3": "ami-0ac1b923393d5082a"
    "ap-south-2": "ami-01b5aa258adc56a81"
    "eu-north-1": "ami-0c3d6a10a198d282d"
    "ca-central-1": "ami-0a51bed764c1749b6"
    "us-west-1": "ami-07f8b4231133414a6"
    "eu-south-2": "ami-07c505a78dad4d474"
    "cn-north-1": "ami-070944db486cc107f"
    "af-south-1": "ami-0ccedbebe3a0f5ecc"
    "me-central-1": "ami-0467fef53b9b387e4"
    "eu-west-2": "ami-00efc25778562c229"
    "eu-south-1": "ami-01671c02f287044a6"
    "ca-west-1": "ami-05f4010bf08fa598b"
    "ap-east-1": "ami-0dfd8979d410239bd"
    "eu-central-2": "ami-0f5e7ad1a5de42912"
    "cn-northwest-1": "ami-0baca953ae7299a69"
    "il-central-1": "ami-0c5069d89e521043f"
  }
}