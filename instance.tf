provider "aws" {
  region = "us-east-1"
}
resource "ec2_instance" "web" {
  ami = "ami-004cd5eb616d96667"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"

tags = {
    Name = "EC2-Instance" }
}
output "PUBLIC_IP_OF_INSTANCE" {
  value = "aws_instance.web.public.ip"
}
