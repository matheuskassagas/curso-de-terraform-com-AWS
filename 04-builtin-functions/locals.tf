locals {
  instance_number = lookup(var.instance_number, var.env) #retorna o valor de acordo com a variavel env
  file_ext        = "zip"
  object_name     = "meu-arquivo-gerado-de-um-template"

  common_tags = {
    "Owner" = "Matheus G."
    "Year"  = "2022"
  }
}
