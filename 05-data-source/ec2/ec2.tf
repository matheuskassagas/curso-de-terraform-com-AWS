resource "aws_instance" "web" {
  ami           = ""
  instance_type = var.instance_type
}
