provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami = "ami-003ff40010762ace2"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"
  user_data = "sudo service apache2 start"
  tags = {
    Name = "Terraform-ec2"
  }
}

