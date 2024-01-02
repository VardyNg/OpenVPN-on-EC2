# Fetch Terraform output and store it in a variable
terraform_output=$(terraform output -json)

# Extract values using jq (JSON processor)
ec2_key=$(echo "$terraform_output" | jq -r '.ec2_key.value')
ec2_url=$(echo "$terraform_output" | jq -r '.ec2_url.value')
echo $ec2_key
echo $ec2_url

# SCP command using the extracted values
scp -i "$ec2_key.pem" ubuntu@"$ec2_url":/home/ubuntu/client.ovpn ./client.ovpn