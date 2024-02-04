provider "aws" {
  region = "us-east-2"
#  access_key = ""
#  secret_key = ""
}

/*resource "aws_instance" "name" {
  ami = "ami-0c2f3d2ee24929520"
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-instance"
  }
}*/

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "my-first-vpc"
  }
  
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.name.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}