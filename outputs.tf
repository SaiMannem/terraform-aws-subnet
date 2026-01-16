output "subnet_id" {
  description = "Outputs the subnetid"
  value       = { for k, v in aws_subnet.this : k => v.id }
}
#if we simply pass the value like below, you wont see just one ID, it contains everything, arn, id, cidr_block ..etc
#value = aws_subnet.this

output "subnet_arn" {
  description = "Outputs the subnet ARN"
  value       = { for k, v in aws_subnet.this : k => v.arn }
}

output "subnet_cidr_block" {
  description = "Outputs the CIDR block of the subnets"
  value       = { for k, v in aws_subnet.this : k => v.cidr_block }
}

output "subnet_avilability_zones" {
  description = "Outputs the avilability zones of the subnets"
  value       = { for k, v in aws_subnet.this : k => v.availability_zone }
}