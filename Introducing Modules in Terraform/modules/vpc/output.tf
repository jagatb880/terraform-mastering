# terra_proj/vpc/outputs.tf

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.example_vpc.id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.example_subnet.id
}

output "route_table_id" {
  description = "ID of the created route table"
  value       = aws_route_table.example_route_table.id
}
