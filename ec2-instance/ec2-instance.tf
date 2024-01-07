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
    region = "us-east-1"
}
##resource block
resource aws_instance "ec2-demo-balaji" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t3.small"
}

/* terraform commands
terraform init -> to intialize the terrform configuration files.check 
terraform validate -> to validate the configuration files
terraform plan -> to generate the plan what resources are going to create it
terraform apply -auto-approve -> it will create resource here ec2 instance in aws cloud
terraform destroy -auto-approve -> It destroy ec2 instance
*/