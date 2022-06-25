variable "envinroment" {
  type    = string
  default = ""
}

variable "aws_region" {
  type        = string
  description = "region"

}

variable "aws_profile" {
  type        = string
  description = "profile"

}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  type        = string
  description = "EC2"


}

variable "instance_ami" {
  type        = string
  description = ""

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

