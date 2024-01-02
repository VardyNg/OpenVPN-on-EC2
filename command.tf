resource "null_resource" "local_command_trigger" {
  depends_on = [module.ec2_instance]

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = module.ec2_instance.public_dns
      user = "ubuntu"
      private_key = file("${var.ec2_key_name}.pem")
    }

    inline = [
      "echo 'connected!'",
      "sudo apt update",
      "cd /home/ubuntu",
      "curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh",
      "sudo chmod +x openvpn-install.sh",
      "sudo AUTO_INSTALL=y ./openvpn-install.sh",
    ]
  }
    
  provisioner "local-exec" {
    command = "scp -i ${var.ec2_key_name}.pem -o ConnectTimeout=600 -oStrictHostKeyChecking=accept-new ubuntu@${module.ec2_instance.public_dns}:/home/ubuntu/client.ovpn ./client.ovpn"
  } 
}