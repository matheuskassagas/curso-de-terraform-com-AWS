terraform {
  required_version = "1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }

  backend "s3" {
    bucket  = "precisa-de-um-bucket-real"
    key     = "dev/05-data-source/terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}


provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

