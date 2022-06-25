instance_type = "t3.medium"

envinroment = "dev"

instance_tags = {
  Name    = "AppServerInstance"
  Project = "AWS Terraform"
  Env     = "Prod"
}


# terraform plan -var-file="prod.tfvars"
