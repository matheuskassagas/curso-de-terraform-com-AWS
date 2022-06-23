resource "aws_instance" "app_server" { #recurso e nome 
  ami           = "ami-830c99"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServerInstance"
  }

}
