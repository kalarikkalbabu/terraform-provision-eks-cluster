terraform {
  required_version = ">= 0.14.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region = var.region

  default_tags {
    tags = {
      Environment       = "Test"
      Project           = "EKS-Workshop"
    }
  }
}
