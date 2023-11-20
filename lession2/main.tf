module "vpc" {
  source = "./modules/vpc"
  username = var.username
  number_of_subnet_per_az = var.number_of_subnet_per_az
}

module "network" {
  source = "./modules/network"
  aws_vpc = module.vpc.aws_vpc
  aws_public_subnets = module.vpc.aws_public_subnets
  username = var.username
  number_of_subnet_per_az = var.number_of_subnet_per_az
}