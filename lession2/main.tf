module "vpc" {
  source = "./modules/vpc"
  username = var.username
  number_of_subnet_per_az = var.number_of_subnet_per_az
}

module "network" {
  source = "./modules/network"
  aws_vpc = module.vpc.aws_vpc
  number_of_subnet_per_az = var.number_of_subnet_per_az
  aws_public_subnets = module.vpc.aws_public_subnets
  aws_private_subnets = module.vpc.aws_private_subnets
  username = var.username
}