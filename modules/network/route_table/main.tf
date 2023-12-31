resource "aws_route_table" "rt_public_subnets_main" {
  vpc_id = var.aws_vpc.id
  route {
    cidr_block = var.route_table_config.route_table_cidr_block
    gateway_id = var.aws_igw.id
  }
  tags = {
    Name     = "${var.aws_config.aws_username}-public-rt"
    Username = var.aws_config.aws_username
  }
}

resource "aws_route_table_association" "rt_public_subnets_association_main" {
  count          = var.vpc_config.vpc_number_of_subnet_per_az
  subnet_id      = var.aws_public_subnets[count.index].id
  route_table_id = aws_route_table.rt_public_subnets_main.id
}

resource "aws_route_table" "rt_private_subnets_main" {
  vpc_id = var.aws_vpc.id
  route {
    cidr_block = var.route_table_config.route_table_cidr_block
    gateway_id = var.aws_igw.id
  }
  tags = {
    Name     = "${var.aws_config.aws_username}-private-rt"
    Username = var.aws_config.aws_username
  }
}

resource "aws_route_table_association" "rt_private_subnets_association_main" {
  count          = var.vpc_config.vpc_number_of_subnet_per_az
  subnet_id      = var.aws_private_subnets[count.index].id
  route_table_id = aws_route_table.rt_private_subnets_main.id
}
