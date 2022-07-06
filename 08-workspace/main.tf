terraform {
  required_version = "1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-968339500772"
    key = "05-workspaces/terraform-tfstate"
    region = "eu-central-1"
    profile = "default"
    dynamodb_table = "tflock-tfstate-968339500772"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web" {
  count = lookup(var.instance, local.env) ["number"]
  ami = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]
  tags = {
    Name = "Minha máquina web ${local.env}"
    Env  = local.env
  }
}