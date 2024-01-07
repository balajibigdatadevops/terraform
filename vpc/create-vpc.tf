## terraform block
terraform {
  required_version = "~> 1.6.6"
  required_providers {
    awsvpctest = {
     source = "hashicorp/aws"
         }
  }
}

##provider block
provider "awsvpctest" {
      profile = "default"
      region = "us-east-1"    
}

##resource block
resource "aws_vpc" "awsvpctest" {
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name" = "Balajivpc"
    }

}


/*
above is example to create vpc using terraform
required_version is terraform version. 0.14 and later version terraform block required
source means it downloads terraform directory using hashicorp/aws
default profile will be used.
aws_vpc_test is local name in terraform configuration should be used same in provider block
resource is block type it has two block labels
aws_vpc is terraform aws provider giving we need to use same name
aws_vpc_test is our name where in aws provider vpc will creat this name
*/