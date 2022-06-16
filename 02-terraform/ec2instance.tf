resource "aws_instance" "amazon" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.key_name
  tags = {
    "Name" = "EC2 DEMO"
  }
}