provider "aws" {
  region = "us-east-1"
  profile = "defualt"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket-${random_id.random.prefix}"
  acl    = "private"
}

resource "random_id" "random" {
  byte_length = 4
}
