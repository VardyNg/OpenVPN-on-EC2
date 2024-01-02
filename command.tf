resource "null_resource" "local_command_trigger" {
  depends_on = [module.ec2_instance]
  
  provisioner "local-exec" {
    command = "sh ./scripts/get_config.sh"
    
  }
}