resource "aws_instance" "ubuntu" {
  ami = "ami-07eaf27c7c4a884cf"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 DEMO"
  }
}