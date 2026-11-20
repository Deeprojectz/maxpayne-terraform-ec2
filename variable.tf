variable "ami" {
    type = string
    description = "ami"
    default = "ami-0639df93102b03fec"
  
}

variable "instance_type" {
    type = string
    description = "instance type"
    default = "t3.micro"
  
}

variable "key_name" {
    type = string
    description = "key pair"
    default = "mykeypair"
  
}

variable "environment" {
    type = string
    description = "environment"
    default = "uat"
  
}