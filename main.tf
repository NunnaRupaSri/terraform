provider "aws" {
  region                          = "us-east-1"
}

data "aws_ami" "centos7" {
  most_recent = true
  owners = [973714476881]
}
resource "aws_instance" "web" {
  ami                             = "${data.aws_ami.centos7.id}"
  instance_type                   = "t2.micro"
  vpc_security_group_ids          = ["$(aws_security_groups.instance.id)"]

  tags = {
    name                          = "hello world"
  }
}

resource "aws_security_group" "instance" {
  name                            = "web"
  ingress {
    from_port                     = 8080
    protocol                      = "tcp"
    to_port                       = 8080
    cidr_blocks                   = ["0.0.0.0/0"]
  }
}