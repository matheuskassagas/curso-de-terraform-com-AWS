resource "aws_s3_bucket" "test-bucket" { #recurso e nome 
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }

}

#Acesse a pasta atraves do terminal 
# -Command - terraform init /irá fazer o download dos modulos, plugins. /
# -Command - terraform plan
# -Command - terraform apply
# -Command - terraform destroy
