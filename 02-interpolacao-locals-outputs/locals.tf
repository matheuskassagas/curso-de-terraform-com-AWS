locals { #locals(singular)
  ip_filepath = "ips.json"

  common_tags = {

    Service = "Terraform"

    ManageBy = "Terraform"

    Environment = var.environment

    Owner = "Matheus G."
  }

}
