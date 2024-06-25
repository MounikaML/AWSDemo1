terraform {
	  backend "s3" {
    bucket = "my-tf-test-bucket9234"
    key    = "mounika/awsDemo/terraform.tfstate"
  }
}
