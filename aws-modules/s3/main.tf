resource "aws_s3_bucket" "bucket" {
  count = length(var.bucket_names)
}