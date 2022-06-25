resource "aws_s3_bucket" "test-bucket" { #type and name 
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Matheus Gigliotti"
    UpdatedAt   = "2022-01-23"
  }

}

#Acesse a pasta atraves do terminal 
# -Command - terraform init /irá fazer o download dos modulos, plugins. /
# -Command - terraform plan
# -Command - terraform apply
# -Command - terraform destroy
# -Command - terraform validate (valida se o cod)
# -Command - terraform format (formata o cod)
