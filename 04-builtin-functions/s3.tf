
resource "random_pet" "bucket" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.env}"
  tags   = local.common_tags
}

resource "aws_s3_bucket_object" "this_object" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "${uuid()}.${local.file_ext}"      #uuid gera string aleatoria
  source       = data.archive_file.json.output_path #pega o arquivo gerado no data (template)
  etag         = filemd5(data.archive_file.json.output_path)
  content_type = "application/zip"

  tags = local.common_tags
}

