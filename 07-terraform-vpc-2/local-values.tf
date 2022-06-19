# Local Variable
  
locals {
  owners = var.bussiness_division
  environment = var.environment
  name = "${var.bussiness_division}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
}
