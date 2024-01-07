# Terraform Settings Block
terraform {
  # Terraform Version
  required_version = "~> 1.6.6"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
    # Random Provider
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}
# Provider Block
provider "aws" {
  region = "us-east-1"
  profile = "default" # Defining it for default profile is Optional
}

##resource block create random pet name

resource "random_pet" "petname" {
      length = 5
      separator = "-"
}

# Resource Block: Create AWS S3 Bucket
resource "aws_s3_bcuket" "sample" {
  bucket = random_pet.petname.id
  acl    = "public-read"
  #region = "us-east-1"  # Comment this if we are going to use AWS Provider v3.x version

}
