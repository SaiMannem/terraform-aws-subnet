output "subnet_id" {
  description = "Outputs the subnetid"
  value       = { for k, v in aws_subnet.this : k => v.id }
}
#if we simply pass the value like below, you wont see just one ID, it contains everything, arn, id, cidr_block ..etc
#value = aws_subnet.this