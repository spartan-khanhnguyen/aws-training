// lesson 2 - network
module "network" {
  source                = "./modules/network"
  aws_config            = var.aws_config
  vpc_config            = var.vpc_config
  route_table_config    = var.route_table_config
  security_group_config = var.security_group_config
}
