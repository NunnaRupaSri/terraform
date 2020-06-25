provider "aws" {
  region = "us-east-1b"
}

data "aws_ami" "centos" {
  most_recent = true

  owners = ["973714476881"] # Canonical
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}