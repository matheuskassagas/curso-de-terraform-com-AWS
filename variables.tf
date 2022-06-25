

variable "aws_region" {
  type        = string
  description = "region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "profile"
  default     = "default"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  type        = string
  description = "EC2"
  default     = "t3.micro"

}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-03c3a7e4263fd998c"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "AppServerInstance"
    Project = "AWS Terraform"
  }

}

variable "user_information" {
  type = object({
    name    = string
    address = string
  })
  sensitive = true
}

resource "some_resource" "a" {
  name    = var.user_information.name
  address = var.user_information.address
}

