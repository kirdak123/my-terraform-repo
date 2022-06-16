resource "aws_instance" "amazon" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.key_name
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id | aws_security_group.vpc-http.id]
  tags = {
    "Name" = "EC2 DEMO"
  }
}

