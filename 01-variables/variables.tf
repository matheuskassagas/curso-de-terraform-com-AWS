variable "environment" {
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

