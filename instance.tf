provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami = "ami-003ff40010762ace2"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"

tags = {
    Name = "Terraform-ec2"
}
}
output "PUBLIC_IP_OF_INSTANCE" {
  value = aws_instance.web.public_ip
}
