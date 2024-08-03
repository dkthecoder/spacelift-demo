provider "aws" {
  region  = "eu-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket-${random_id.random.prefix}"
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "random_id" "random" {
  byte_length = 4
}
