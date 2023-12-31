terraform {
  required_version = ">= 0.14.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "s3" {
    bucket         = "myworkshop-terraform-state"
    dynamodb_table = "myworkshop-terraform-state-locks"
    key            = "terraform-aws-eks-workshop.tfstate"
    region         = "ap-south-1"
    encrypt        = true
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
