resource "aws_s3_bucket" "buckets" {
  for_each = var.bucket_configurations

  bucket = each.value.name
}