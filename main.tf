provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_instance" "vm1" {
  ami = var.aws_instance
  instance_type = aws_instance.example
}
