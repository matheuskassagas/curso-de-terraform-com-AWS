data "template_file" "json" {
  template = file("template.json.tpl") #le o arquivo e substitui por todas as vars que fora definidas

  vars = {
    age    = 29
    eye    = "Green"
    name   = "Matheus"
    gender = "Male"
  }
}

data "archive_file" "json" {                                                  # pega o conteudo e converte para o tipo desejado 
  type        = local.file_ext                                                #tipo
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}" # 3º onde sera salvo o arquivo

  source {
    content  = data.template_file.json.rendered #1º renderiza o arquivo para tipo (type)
    filename = "${local.object_name}.json"      #2º nome do arquivo com o template zipado
  }

}
