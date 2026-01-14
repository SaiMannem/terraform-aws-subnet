locals {
  common_tags = {
    managedBy   = var.common_tags.managedBy
    owner       = var.common_tags.owner
    environment = var.common_tags.environment
  }
}

resource "aws_subnet" "this" {
  for_each = {
    for subnet in var.subnet_config : subnet.name => subnet 
  }

  vpc_id = var.vpc_id
  
}