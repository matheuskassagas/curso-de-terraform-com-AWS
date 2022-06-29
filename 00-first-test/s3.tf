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

