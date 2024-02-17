variable "bucket_configurations" {
  description = "The name of the S3 bucket"
  type        = list(string)
  default = [ "loko", "folompo" ]
}