provider "aws" {
  region                          = "us-east-1"
}
resource "aws_instance" "example" {
  ami                             = "ami-003ff40010762ace2"
  instance_type                   = "t2.micro"
  user_data                       = <<-EOF
                                    #!/bin/bash
                                    echo "Hello, World" > index.html
                                    nohup busybox httpd -f -p 8080 &
                                    EOF
  tags = {
    name                          = "example"
  }
}

resource "aws_security_group" "instance" {
  name                            = "example"
  ingress {
    from_port                     = 8080
    protocol                      = "tcp"
    to_port                       = 8080
    cidr_blocks                   = ["0.0.0.0/0"]
  }
}