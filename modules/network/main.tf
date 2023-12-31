# vpc
module "vpc" {
  source     = "./vpc"
  aws_config = var.aws_config
  vpc_config = var.vpc_config
}

# internet gateway
module "internet_gateway" {
  source     = "./internet_gateway"
  aws_config = var.aws_config
  aws_vpc    = module.vpc.aws_vpc
}

# nat
module "nat_gateway" {
  source              = "./nat"
  aws_config          = var.aws_config
  aws_private_subnets = module.vpc.aws_private_subnets
}

# route table
module "route-table" {
  source              = "./route_table"
  aws_config          = var.aws_config
  vpc_config          = var.vpc_config
  aws_vpc             = module.vpc.aws_vpc
  route_table_config  = var.route_table_config
  aws_igw             = module.internet_gateway.aws_igw
  aws_public_subnets  = module.vpc.aws_public_subnets
  aws_private_subnets = module.vpc.aws_private_subnets
}

# security group
module "security-group" {
  source                = "./security-group"
  aws_config            = var.aws_config
  aws_vpc               = module.vpc.aws_vpc
  security_group_config = var.security_group_config
}