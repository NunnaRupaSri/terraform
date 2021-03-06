provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "default" {
  owners = ["973714476881"]
  most_recent = true
  filter {
    name = "name"
    values = ["Centos-7-DevOps-Practice"]
  }
}

resource "aws_instance" "web" {
  ami = data.aws_ami.default.id
  instance_type = "t2.micro"
  key_name = "Dev-Ops"

  provisioner "remote-exec" {

    connection {
    host = self.public_ip
    user = "root"
    password = "DevOps321"
    }
    inline = [
    "yum install nginx",
    "systemctl start nginx"
    ]
  }
  tags = {
  Name = "Terraform-ec2"
  }
}

output "PUBLIC_IP_OF_INSTANCE" {
  value = aws_instance.web.public_ip
}
