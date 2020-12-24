resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "vpctest" {
  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "Main"
  }
}