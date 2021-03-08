#Creating new ec2 instance
resource "aws_instance" "ec2_test" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "ec2-key"

  tags = local.common_tags
}

#Creating a keypair for ec2 instance
resource "aws_key_pair" "ec2_key" {
  key_name   = "ec2-key"
  public_key = var.key_pair
  tags = local.common_tags
}