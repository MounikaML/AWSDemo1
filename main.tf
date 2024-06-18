terraform {
	  backend "s3" {
    bucket = "my-tf-test-bucket9234"
    key    = "munika/awstest/terraform.tfstate"
  }
}

provider "aws" {
region = "us-west-1"
}

resource "aws_s3_bucket" "fd_bucket" {
  bucket = "fd-9234-bucket"  # Replace with your desired bucket name
  acl    = "private"
  }

output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.fd_bucket.id
}


