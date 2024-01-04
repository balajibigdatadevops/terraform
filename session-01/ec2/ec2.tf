resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" ##devops-practice
  instance_type = "t2.micro"
  vpc_security_group_ids  =[aws_security_group.roboshop.id]  ##This is list

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_security_group" "roboshop" { ## This is terraform name for reference only
  name        = var.sg-name
  description = var.sg-description
 
 ingress {
    description      = "allow-all-traffic"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr-blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   # ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    
    Name = "roboshop-all-aws"

  }
}