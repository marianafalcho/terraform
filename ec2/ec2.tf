#Creating new ec2 instance
resource "aws_instance" "ec2_test" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = local.common_tags
}
