variable "vpc_id" {
  description = "Reference the VPC id from the VPC module"
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

#when we are creating the multiple resources, the best way to define them as list of object
variable "subnet_config" {
  type = list(object({
    name              = string
    availability_zone = string
    cidr_block        = string
  }))

  default = [
    {
      name              = "publicSubnet01"
      availability_zone = "ap-south-1a"
      cidr_block        = "10.0.0.0/24"
    },
    {
      name              = "privateSubnet01"
      availability_zone = "ap-south-1b"
      cidr_block        = "10.0.1.0/24"
    },
    {
      name              = "privateSubnet02"
      availability_zone = "ap-south-1c"
      cidr_block        = "10.0.2.0/24"
    }
  ]
}