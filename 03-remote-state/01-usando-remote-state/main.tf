terraform {
  required_version = "1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }

  backend "s3" {
    bucket  = "my-bucket-creado-em-00-remote-state-bucket"
    key     = "dev/01-usando-remote-state/terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = "default"


}