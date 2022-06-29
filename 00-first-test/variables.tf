variable "environment" {
  type    = string
  default = ""
}

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

