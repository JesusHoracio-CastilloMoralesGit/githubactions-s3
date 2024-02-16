terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "tato-terraform-state-bucket"
    key = "terraform/terraform.tfstate"
    dynamodb_table = "tato-terraform-state-lock"
    region = "us-east-1"
  }
}

provider "aws" {
  profile = "admin-general"
}