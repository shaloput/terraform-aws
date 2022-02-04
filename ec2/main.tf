provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_first_ubuntu" {
  ami           = "ami-0d527b8c289b4af7f"
  instance_type = "t2.micro"

  tags = {
    Name  = "My ubuntu server"
    Owner = "Denis Bazdyrev"
  }
}
