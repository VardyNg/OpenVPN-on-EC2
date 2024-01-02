# I just want a quick OpenVPN
Get openvpn access using a single command, auto config ec2 instance and download the config file.

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)

### TL;DR
```sh
# put your ec2 key pair (.pem) in the project root
terraform init && terraform plan -o plan.out && terraform apply plan.out
```

### Prerequisites
- Terraform
- AWS account
- AWS EC2 key pair

### How to use
1. Configure variables for custom use
    | Variable      | Description | Default | Required |
    | ----------- | ----------- | ----------- | ----------- |
    | app_name | application name | openvpn-on-ec2 | no |
    | region | AWS region to deploy the resources | us-west-1 | no |
    | instance_type | EC2 instance type | t4g.small | no |
    | ec2_key_name | EC2 key pair name | - | yes |
    | ec2_ami_id | Map of AMI IDs for each region | see `variable.tf` | no |

    The variable can be configured in the `tfvars` files

1. Initialise terraform
    ```sh
    terraform init
    ```
1. Put your ec2 key pair (.pem) in the project root, otherwise the vpn config can't be downloaded

1. Deploy resources
    ```sh
    terraform plan -o plan.out
    ```
    and 
    ```sh
    terraform apply plan.out
    ```

### What resources are provisioned
- VPC
- Public Subnet
- Security Group
- EC2

### Clean up
```sh
terraform destroy
```
