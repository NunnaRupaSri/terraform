provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  owner = "265378241500"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"

tags = {
    Name = "Hello world"
}
}
output "PUBLIC_IP_OF_INSTANCE" {
  value = aws_instance.web.public_ip
}
