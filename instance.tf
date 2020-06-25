resource "aws" "aws_instance" {
  profile = "default"
  region = "us-east-1"
  ami = " ami-004cd5eb616d96667"
  instance_type = "t2.micro"
}
