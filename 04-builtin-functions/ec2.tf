resource "aws_instance" "server" {
  #cria a quantidade definida do mesmo tipo de recurso
  count = local.instance_number <= 0 ? 0 : local.instance_number #if e else

  ami           = var.instance_ami
  instance_type = lookup(var.instance_type, var.env) #retorna o valor de acordo com a variavel env

  tags = merge(        #mergia uma ou mais variaveis do tipo map
    local.common_tags, #tags in locals
    {
      Project = "Curso AWS com Terraform"
      Env     = format("%s", var.env)
      Name    = format("Instance %d", count.index + 1)
    }
  )
}
