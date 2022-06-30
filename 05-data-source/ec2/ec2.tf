resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu
  instance_type = var.instance_type
}
