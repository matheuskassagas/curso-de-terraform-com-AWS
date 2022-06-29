terraform {
  required_version = "1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

data "aws_caller_identity" "current" {} #data pull (pegando info da aws)

resource "aws_s3_bucket" "remote-state" {                           #resource push (mandando info para aws)
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}" #criando um bucket com o numero da conta da aws
  versioning {
    enabled = true
  }

  tags = {
    Description = "Stores terraform remote state files"

    ManagedBy = "Terraform"

    Owner = "Matheus G Kassagas"

    CreatedAt = "2022-06-29"
  }
}

output "remote_stage_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}
