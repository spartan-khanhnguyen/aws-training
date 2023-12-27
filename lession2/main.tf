module "vpc" {
  source                  = "./modules/vpc"
  username                = var.username
  number_of_subnet_per_az = var.number_of_subnet_per_az
  availability_zones      = var.availability_zones
  private_cidr_blocks     = var.private_cidr_blocks
  public_cidr_blocks      = var.public_cidr_blocks
  subnet_names            = var.subnet_names
  vpc_cidr_block          = var.vpc_cidr_block
}

module "network" {
  source                  = "./modules/network"
  username                = var.username
  aws_vpc                 = module.vpc.aws_vpc
  number_of_subnet_per_az = var.number_of_subnet_per_az
  aws_public_subnets      = module.vpc.aws_public_subnets
  aws_private_subnets     = module.vpc.aws_private_subnets
  router_table_cidr_block = var.router_table_cidr_block
}

module "security-group" {
  source            = "./modules/security-group"
  username          = var.username
  aws_vpc           = module.vpc.aws_vpc
  allowed_inbounds  = var.allowed_inbounds
  allowed_outbounds = var.allowed_outbounds
}