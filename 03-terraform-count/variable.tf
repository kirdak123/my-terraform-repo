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

# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string)
  default = ["t3.micro", "t3.small", "t3.large"]  
}

# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.large"
  }
}