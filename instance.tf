provider "aws"  {
  profile = "default"
  region = "us-east-1"
  ami = " ami-004cd5eb616d96667"
  instance_type = "t2.micro"
}
resource "aws_ami" "aws_instance_type" {
  ami = " ami-004cd5eb616d96667"
  instance_type = "t2.micro"
}
