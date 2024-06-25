provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "fd_bucket" {
  bucket = "my-tf-Mounika-bucket9234"  # Replace with your desired bucket name

  }

output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.fd_bucket.id
}
