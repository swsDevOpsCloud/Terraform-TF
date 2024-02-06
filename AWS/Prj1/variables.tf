/*variable "elb_name" {
    type = string
}

#creating avaialbility zone list variable
variable "az_list" {
    type = list
}

variable "timeout" {
    type = number
}*/

variable "ami_id" {
    type = string

    validation {
        condition = ( 
            length (var.ami_id) > 4 &&
            substr (var.ami_id, 0, 4) == "ami-"
        )
        error_message = "The ami_id value must start with \"ami_id\"."
    }
}
