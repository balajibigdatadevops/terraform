terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"  ##AWS provider version not terraform version
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}