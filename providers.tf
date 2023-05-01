terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region     = var.aws_region

  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "default"
}
