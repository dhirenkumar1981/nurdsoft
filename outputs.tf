output "InstanceId" {
  value = aws_instance.webserver.id
}

output "PublicIpAddress" {
  value = aws_instance.webserver.public_ip
}
