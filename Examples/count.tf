provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  count = 15
  ami = "ami-003ff40010762ace2"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"
  user_data = "sudo service apache2 start"
  tags = {
    Name = "Terraform-ec2"
  }
}

resource "dnsimple_record" "example" {
  domain = "example.com"
  name = "test"
  value = "$(aws_instance.example.public_ip)"
  type = "A"
}

