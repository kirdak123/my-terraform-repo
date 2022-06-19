# Terraform Settings Block
terraform {
  required_version = ">= 1.2.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.18.0"
     }
  }
}

# Terraform Provider Block
provider "aws" {
  region = "ap-south-1"
}