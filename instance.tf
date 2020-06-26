provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  image = "973714476881"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"

tags = {
    Name = "Hello world"
}
}
output "PUBLIC_IP_OF_INSTANCE" {
  value = aws_instance.web.public_ip
}
