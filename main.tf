 provider "aws" {
  profile = "default"
  region = "us-east-2"  
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cb91c7de36eed2cb"  
  instance_type = "t2.micro"
  
  tags = {
    Name = "MyNewTerraformInstance"
  }
}