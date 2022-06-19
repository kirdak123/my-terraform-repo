# AWS Region
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "Region created to run ec2 instances"
}

# Environment variable
variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment used as a prefix"
}

# Bussiness Division variable
variable "bussiness_division" {
  type        = string
  default     = "HR"
  description = "bussiness division is HR"
}

 