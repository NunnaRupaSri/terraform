provider "aws" {
  region = "us-east-1"
  value = "yes"
}
resource "aws_instance" "ec2_instance" {
  ami = "ami-004cd5eb616d96667"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"

tags = {
    Name = "EC2-Instance" }
}
output "PUBLIC_IP_OF_INSTANCE" {
  value = "aws_instance.web.public.ip"
}
