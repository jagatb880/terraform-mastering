# Provider Configuration
provider "aws" {
  region = "us-east-1" # Update with your desired AWS region
}

# Variable Definition
variable "instance_names" {
  description = "List of instance names"
  type        = list(string)
  default     = ["Instance-1", "Instance-2", "Instance-3"] # Update with your desired instance names
}

# Resource Configuration
resource "aws_instance" "example_instance" {
  for_each      = toset(var.instance_names)
  ami           = "ami-0c7217cdde317cfec" # Update with your desired AMI ID
  instance_type = "t2.micro"              # Update with your desired instance type
  key_name      = "ubuntu-key"            # Update with the name of your key pair

  tags = {
    Name = each.value
  }
}
