# Provider Configuration
provider "aws" {
  region = "us-east-1" # Update with your desired AWS region
}

# Resource Configuration
resource "aws_instance" "example_instance" {
  ami           = "ami-0c7217cdde317cfec" # Update with your desired AMI ID
  instance_type = "t2.micro"              # Update with your desired instance type

  tags = {
    Name = "ExampleInstance"
  }
}

# Output Variables
output "instance_id" {
  value       = aws_instance.example_instance.id
  description = "The ID of the created EC2 instance"
  sensitive   = true
}

output "public_ip" {
  value       = aws_instance.example_instance.public_ip
  description = "The public IP address of the created EC2 instance"
}
