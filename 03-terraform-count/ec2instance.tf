resource "aws_instance" "amazon" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.key_name
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id , aws_security_group.vpc-http.id]
  #instance_type = var.instance_type_list[1]  # For List
  #instance_type = var.instance_type_map["prod"]  # For Map
  count = 2
  tags = {
    "Name" = "Count-Demo-${count.index}"
  }
}


