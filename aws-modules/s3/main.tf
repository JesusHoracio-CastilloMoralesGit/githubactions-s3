resource "aws_s3_bucket" "s3_bucket" {

  count = length(var.bucket_configurations)
  bucket = var.bucket_configurations[count.index]

}