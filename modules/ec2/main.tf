resource "aws_instance" "my_web_server" {
  ami           = "ami-0c86fb8f1a2142743" 
  instance_type = "t2.micro" 
  }