resource "aws_security_group" "allow_ssh" {
   name = "test"
   vpc_id = var.AWS_VPC_ID

  // To Allow SSH Transport
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
}

// To Create EC2 instance
resource "aws_instance" "webserver" {
  region = var.AWS_REGION
  key_name = var.AWS_KEY_NAME
  vpc_id = var.AWS_VPC_ID
  subnet_id = var.AWS_SUBNET_ID
  instance_type = var.AWS_INSTANCE_TYPE
  ami = data.aws_ami.linux.id
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id
  ]
 depends_on = [ aws_security_group.allow_ssh ]
}
