variable "vpc_id" {
  description = "Reference the VPC id from the VPC module"
  type        = string

}

variable "common_tags" {
  type = object({
    managedBy   = string
    owner       = string
    development = string
  })

}

variable "subnet_config" {
  type = map(object({
    create_subnets    = bool
    name              = list(string)
    cidr_block        = list(string)
    availability_zone = list(string)
  }))

}