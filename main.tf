provider "aws" {
  region = "eu-west-2"
}

resource "random_uuid" "uuid" {}

resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket-${random_uuid.uuid.result}"
}

resource "aws_instance" "example" {
  ami           = "ami-02b6c3b7e67e2c9d6"  # Replace with a valid AMI ID for the eu-west-2 region
  instance_type = "t2.micro"  # Free tier eligible

  tags = {
    Name = "ExampleInstance"
  }
}




