output "subnet_id" {
  description = "Outputs the subnetid"
  value       = { for key, value in aws_subnet.this : key => value.id }
}

output "subnet_arn" {
  description = "Outputs the subnet ARN"
  value       = { for key, value in aws_subnet.this : key => value.arn }
}

output "subnet_cidr_block" {
  description = "Outputs the CIDR block of the subnets"
  value       = { for key, value in aws_subnet.this : key => value.cidr_block }
}

output "subnet_avilability_zones" {
  description = "Outputs the avilability zones of the subnets"
  value       = { for key, value in aws_subnet.this : key => value.availability_zone }
}