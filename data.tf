data "aws_ami" "linux" {
  most_recent = true
  owners = ["amazon"]
}