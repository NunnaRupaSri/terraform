resource "aws_instance" "ec2_instance" {
  ami           = "ami-004cd5eb616d96667"
  instance_type = "t2.micro"
  tags = { Name = "EC2-Instance" }
}