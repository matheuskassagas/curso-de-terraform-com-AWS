resource "aws_instance" "app_server" { #recurso e nome 
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags

}
