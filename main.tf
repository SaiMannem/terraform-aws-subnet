locals {
  common_tags = {
    managedBy   = var.common_tags.managedBy
    owner       = var.common_tags.owner
    environment = var.common_tags.environment
  }
}

resource "aws_subnet" "this" {
  count = length(var.subnet_config.cidr_block)

  vpc_id = var.vpc_id #reference from the VPC module

  #Sicne, we defined the varibles as list of Objects, so we need to reference them as [count.index]
  cidr_block        = var.subnet_config.cidr_block[count.index]
  availability_zone = var.subnet_config.availability_zone[count.index]

  tags = merge(local.common_tags, {
    Name = var.subnet_config.name
  })
}