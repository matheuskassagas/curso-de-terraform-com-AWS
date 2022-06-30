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
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}" # 3º onde sera salvo o arquivo na maquina host
  #path.module - retorna o caminho da pasta onde esta o metodo "path.module"
  source {
    content  = data.template_file.json.rendered #1º renderiza o conteudo do template.json.tlp (formato zip)
    filename = "${local.object_name}.json"      #2º nome do arquivo a ser gerado
  }

}
