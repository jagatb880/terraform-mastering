# Provider Configuration
provider "aws" {
  region = "us-east-1" # Update with your desired AWS region
}

# Resource Configuration
resource "aws_instance" "example_instance" {
  ami           = "ami-0c7217cdde317cfec" # Update with your desired AMI ID
  instance_type = "t2.micro"              # Update with your desired instance type
  key_name      = "ubuntu-key"            # Update with the name of your key pair

  tags = {
    Name = "ExampleInstance"
  }

  # Connection Configuration
  connection {
    type        = "ssh"
    user        = "ubuntu"                                           # Update with the appropriate username for your AMI
    private_key = file("/Users/jagatsahoo/Downloads/ubuntu-key.pem") # Update with the path to your private key file
    timeout     = "2m"
    host        = self.public_ip
  }

  # Provisioners
  provisioner "remote-exec" {
    inline = [
      "echo 'Public IP: ${self.public_ip}' > /home/ubuntu/server_info.txt",
      "echo 'Instance ID: ${self.id}' >> /home/ubuntu/server_info.txt"
    ]
  }
}
