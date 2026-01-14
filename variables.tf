variable "vpc_id" {
  description = "Reference the VPC id from the VPC module"
  type        = string
}

#when we are creating the multiple resources, the best way to define them as list of object
variable "subnet_config" {
  type = list(object({
    name = string
    availabilty_zone = string
    cidr_block = string 
  }))

  default = [ 
    {
    name = "publicSubnet"
    availabilty_zone = "ap-south-1a"
    cidr_block = "10.0.0.0/24"
  },
  {
    name = "privateSubnet"
    availabilty_zone = "ap-south-1b"
    cidr_block = "10.0.0.1/24"
  }, 
  {
    name = "privateSubnet"
    availabilty_zone = "ap-south-1c"
    cidr_block = "10.0.0.2/24"
  }
   ]
}