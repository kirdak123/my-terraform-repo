# Create vpc terraform module
module "eks" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.1"
  # insert the 23 required variables here


# vpc basic details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"

  azs                 = ["ap-south-1a", "ap-south-1b"]
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]

  #database_subnet
  create_database_subnet_group           = true
  create_database_subnet_route_table     = true
  database_subnets    = ["10.0.151.0/24", "10.0.152.0/24"]
  #create_database_nat_gateway_route = true
  #create_database_internet_gateway_route = true


  # NAT gateway - for outbound communication
  enable_nat_gateway = true
  single_nat_gateway  = true

  #VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true
 
 #TAGS
 private_subnet_tags = {
    Name = "private-subnet"
 }
 public_subnet_tags = {
    Name = "public-subnet"
 }
 database_subnet_tags = {
    Name = "database-subnet"
 }
 tags = {
    Owner = "ganesh"
    Environment = "dev"
 }
 vpc_tags = {
    Name = "vpc-dev"
 }
}