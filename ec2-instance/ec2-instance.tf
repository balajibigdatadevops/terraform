# Terraform Settings Block
terraform {
required_providers {
  aws = {
    source = "hashicorp/aws"
      }
}
}

##provider block
provider "aws" {

    profile = "default"
    region = "us-west-1"
}

##resource block
resource aws_instance "ec2-demo-balaji" {

    ami = "ami-03265a0778a880afb"
    instance_type = "t3.small"
}