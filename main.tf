provider "aws" {
  region  = "eu-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket-${random_uuid.uuid.result}"
}

resource "random_uuid" "uuid" {}
# cool comment