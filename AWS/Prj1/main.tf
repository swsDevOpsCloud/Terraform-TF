resource "aws_instance" "web" {
    ami = "aaami-0866a04d72a1f5479"
    instance_type = var.types["us-east-1"]
}

#Create Map variable
variable "types" {
    type = map
    default = {
        us-east-1 = "t2.small"
        us-east-2 = "t2.nano"
        ap-south-1 = "t2.micro"
    }
}