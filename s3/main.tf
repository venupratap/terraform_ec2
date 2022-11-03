provider "aws"{
  region = "us-east-2"
}
resource "aws_s3_bucket" "terraform-state" {
  bucket = "venu-aparna-2021"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  hash_key = "LockID"
  name = "terraform-test-locks"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
}

/*terraform {
  backend "s3" {
    bucket = "venu-aparna-2022"
    key = "venu/s3/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-test-1"
    encrypt = true
  }
}*/
