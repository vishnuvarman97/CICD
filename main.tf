terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "demo_server" {
  ami           = "ami-0781c11a831c5f434"
  instance_type = "t2.micro"
  key_name       = "ubuntu"
  
  # Optionally specify an EBS volume
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
  
  tags = {
    Name = "vish"
  }
}
