locals { #locals(singular)
  common_tags {
    ip_filepath = "ips.json"

    Service = "Terraform"

    ManageBy = "Terraform"

    Environment = var.environment

    Owner = "Matheus G."
  }

}
