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
module "my_ec2" {
  source = "./modules/ec2"
  count = 1
//  subnet_id = tolist(data.aws_subnet_ids.example.ids)[0]
  name = "Another One"
}
data "aws_subnet_ids" "example" {
  vpc_id = module.my_vpc.vpc_id
}
