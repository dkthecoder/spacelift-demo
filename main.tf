provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket-1"
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "random_id" "random" {
  byte_length = 4
}
