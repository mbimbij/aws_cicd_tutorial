provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "my_vpc" {
  source = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  subnet_cidr = "192.168.1.0/24"
}