resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = "t2.micro"
}

#Create Map variable
/*variable "types" {
    type = map
    default = {
        us-east-1 = "t2.small"
        us-east-2 = "t2.nano"
        ap-south-1 = "t2.micro"
    }
}*/