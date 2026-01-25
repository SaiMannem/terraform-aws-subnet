variable "vpc_id" {
  description = "Reference the VPC id, from the VPC module"
  type        = string
}

variable "common_tags" {
  type = object({
    managedBy   = string
    owner       = string
    environment = string
  })
  default = {
    managedBy   = "youDidNotSpecify"
    owner       = "youDidNotSpecify"
    environment = "youDidNotSpecify"
  }
}

#When creating multiple resources in Terraform from sintgle module, Especially when each resource has a separate name, separate configuratuion each.
#Using map(object) is the perfect choice while creation, because each object can carry its own name, which becomes your unique identity for for_each

variable "subnet_config" {
  type = map(object({
    availability_zone = string
    cidr_block        = string
  }))
  default = {
    "publicSubnet001" = {
      availability_zone = "ap-south-1a"
      cidr_block        = "10.0.0.0/24"
    }
    "privateSubnet001" = {
      availability_zone = "ap-south-1b"
      cidr_block        = "10.0.1.0/24"
    }
    "privateSubnet002" = {
      availability_zone = "ap-south-1c"
      cidr_block        = "10.0.2.0/24"
    }
  }
}