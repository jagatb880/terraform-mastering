# modules/ec2_instance/outputs.tf

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.example_instance.id
}
