# OpenVPN on EC2
A simple terraform to create EC2 for OpenVPN server.

### Prerequisites
- Terraform
- AWS account
- AWS EC2 key pair

### How to use
1. Configure variables for custom use
    | Variable      | Description | Default | 
    | ----------- | ----------- | ----------- |
    | app_name | application name | openvpn-on-ec2 |
    | region | AWS region to deploy the resources, `make sure you also change the provider region in terraform.tf` | eu-west-1 |
    | instance_type | EC2 instance type | t2.micro |
    | ec2_key_name | EC2 key pair name | user1 |
    | ec2_ami_id | EC2 AMI ID | / |

    The variable can be configured in the `tfvars` files

1. Initialise terraform
    ```sh
    terraform init
    ```

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

### How to download openvpn config from ec2 instance
1. SSH to the EC2 instance
    ```sh
    scp -i <keypair> ec2-user@<ec2-public-ip>:~/client.ovpn .
    ```

