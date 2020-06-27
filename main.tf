provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami = "ami-003ff40010762ace2"
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello World" > index.html
              nohup nginx
  tags = {
    Name = Terraform
  }
}
