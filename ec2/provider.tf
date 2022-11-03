terraform {

  required_providers {
    aws = {
    source  = "hashicorp/aws"

    version = "~> 4.37.0"

    }
  }


  required_version = ">= 0.14.9"

}

provider "aws" {

  region                = var.aws_region
  access_key                    = "AKIA2E7H4KD2LW3STAQF"
  secret_key                     = "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"

}

