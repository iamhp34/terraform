resource "aws_instance" "my_web_server" {
  ami           = "ami-0c7217cdde317cfec" 
  instance_type = "t2.micro"              
}