resource "aws_instance" "web" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.nano"

  tags = {
    Name = "mariana-test"
  }
}



