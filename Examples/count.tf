provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami = "ami-003ff40010762ace2"
  instance_type = "t2.micro"
  key_name = "Dev-Ops"
  provisioner "remote-exec" {
     connection {
      host = self.public_ip
      user = "root"
      password = "DevOps321"
    }
  inline = [
   "sudo apt-get update",
    "sudo apt-get install -y php",
    "sudo apt-get install -y apache2",
    "sudo git clone https://github.com/brikis98/php-app.git /var/www/html/app"
  ]
  }
  tags = {
    Name = "Terraform-ec2"
  }
}
