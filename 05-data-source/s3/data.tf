data "terraform_remote_state" "server" {
  backend = "s3"

  config {
    bucket  = "precisa-de-um-bucket-real"
    key     = "dev/05-data-source/terraform.tfstate"
    region  = var.aws_region
    profile = var.aws_profile
  }
}
