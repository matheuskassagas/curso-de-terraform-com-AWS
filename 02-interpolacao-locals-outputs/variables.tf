variable "environment" {
  type    = string
  default = "dev"
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


