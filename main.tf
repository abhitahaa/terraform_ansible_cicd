provider "aws" {
  region = "us-east-2"
}

variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}


#VPC creation
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name : "${var.env_prefix}-mainvpc"
  }
}

#Create Subnet

resource "aws_subnet" "public_subnet" {
  cidr_block        = var.subnet_cidr_block
  vpc_id            = aws_vpc.main.id
  availability_zone = "us-east-2a"
}

