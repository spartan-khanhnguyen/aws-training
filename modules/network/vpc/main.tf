resource "aws_vpc" "vpc_main" {
  cidr_block = var.vpc_config.vpc_cidr_block
  tags = {
    Name     = "${var.aws_config.aws_username}-vpc"
    Username = var.aws_config.aws_username
  }
}

resource "aws_subnet" "vpc_public_subnet" {
  count             = var.vpc_config.vpc_number_of_subnet_per_az
  vpc_id            = aws_vpc.vpc_main.id
  availability_zone = var.vpc_config.vpc_availability_zones[count.index]
  cidr_block        = var.vpc_config.vpc_public_cidr_blocks[count.index]
  tags = {
    Name     = "${var.aws_config.aws_username}-public-${var.vpc_config.vpc_subnet_names[count.index]}"
    Username = var.aws_config.aws_username
  }
}

resource "aws_subnet" "vpc_private_subnet" {
  count             = var.vpc_config.vpc_number_of_subnet_per_az
  vpc_id            = aws_vpc.vpc_main.id
  availability_zone = var.vpc_config.vpc_availability_zones[count.index]
  cidr_block        = var.vpc_config.vpc_private_cidr_blocks[count.index]
  tags = {
    Name     = "${var.aws_config.aws_username}-private-${var.vpc_config.vpc_subnet_names[count.index]}"
    Username = var.aws_config.aws_username
  }
}
