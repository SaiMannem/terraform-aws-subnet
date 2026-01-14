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

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = merge(local.common_tags, {
    Name = each.key
  })
}