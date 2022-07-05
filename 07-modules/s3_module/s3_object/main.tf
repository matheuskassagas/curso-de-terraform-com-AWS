resource "aws_s3_bucket_object" "this" {
  bucket = var.bucket
  key    = var.key
  source = var.src
  etag = filemd5(var.src)
  content_type = lookup(var.file_types, regex("\\.[^\\.]+\\z", var.src), var.default_file_type)

  dynamic "website" {
    for_each = length(keys(var.website)) == 0 ? [] : [var.website]
    content {
      index_document           = lookup(website.value, "index_document", null)
      error_document           = lookup(website.value, "error_document", null)
      redirect_all_requests_to = lookup(website.value, "redirect_all_requests_to", null)
      routing_rolus            = lookup(website.value, "routing_rolus", null)
    }
  }
}
