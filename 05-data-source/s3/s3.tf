resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-${random_pet.this.id}"
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "instance/instances.txt"
  source       = "output.json"
  etag         = filemd5("output.json")
  content_type = "application/json"
}
