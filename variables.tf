variable "AWS_REGION" {
  description = "variable for AWS region"
  type        = string
  default     = "us-west-2"
}
variable "AWS_KEY_NAME" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = "infra"
}
variable "AWS_VPC_ID" {
  description = "AWS VPC ID to launch in"
  type        = string
  default     = "vpc-a6f052c3"
}
variable "AWS_SUBNET_ID" {
  description = "AWS VPC Subnet ID to launch in"
  type        = string
  default     = "subnet-a46befc1"
}

variable "AWS_INSTANCE_TYPE" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

