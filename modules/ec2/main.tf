resource "aws_instance" "my_web_server" {
  ami           = "ami-0c7217cdde317cfec" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro" 
  }