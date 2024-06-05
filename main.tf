provider "aws" {
region = "us-east-1"
}
resource "aws_vpc" "sub-vpc" {
  cidr_block = "10.0.0.0/16"
tags = {
    Name = "production"
  }
}
resource "aws_subnet" "subnet-1" {
  vpc_id     =aws_vpc.sub-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "simply"
  }
}


