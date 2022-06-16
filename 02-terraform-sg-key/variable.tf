variable "aws_region" {
  description = "AWS region to be created"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "type of instance to be created"
  type = string
  default = "t2.micro"
}

variable "key_name" {
    description = "key to be associated to the instance"
    type = string
    default = "key"

}