terraform {
  backend "s3" {
    bucket = "venu-aparna-2022"
    key = "venu/s3/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-test-1"
    encrypt = true
  }
}
