# route_table/outputs.tf

output "route_table_id" {
  description = "ID of the created route table"
  value       = aws_route_table.example_route_table.id
}
