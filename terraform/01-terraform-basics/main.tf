provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# plan -> execute
resource "aws_s3_bucket" "first_s3_bucket" {
  bucket = "first-s3-bucket-mastercode-aqil-001"
}

resource "aws_s3_bucket_versioning" "version-001" {
  bucket = aws_s3_bucket.first_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# create new iam user
resource "aws_iam_user" "commmand_line_user" {
  name = "commmand_line_user_new"
}

