resource "aws_instance" "amazon" {
  ami = "ami-07eaf27c7c4a884cf"
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 DEMO"
  }
}