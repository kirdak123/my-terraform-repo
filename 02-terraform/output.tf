output "instance_publicip" {
    description = "ec2 publicip"
    value = aws_instance.amazon.public_ip
}

output "instance_publicdns" {
    description = "ec2 publicdns"
    value = aws_instance.amazon.public_dns
}