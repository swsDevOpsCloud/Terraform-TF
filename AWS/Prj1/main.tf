# Creating EC2 instances
resource "aws_instance" "first_ec2" {
 ami = var.ami_id
 instance_type = var.instancetype
 tags = {
 Name = "Ubuntu Instance"
 }
}

# Creating Vpc resource
resource "aws_vpc" "vpc1" {
 cidr_block = var.vpc_cidr
}

# Creating subnet resource
resource "aws_subnet" "subnet1" {
 vpc_id = aws_vpc.vpc1.id
 cidr_block = var.subnet_cidr
 tags = {
 Name = "Main"
 }
}

output "instance_ip_addr" {
    value = aws_instance.first_ec2.private_ip
}