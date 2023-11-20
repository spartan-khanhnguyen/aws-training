resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.username}-vpc"
    Username = var.username
  }
}

resource "aws_subnet" "public_subnets" {
  count = var.number_of_subnet_per_az
  vpc_id = aws_vpc.main.id
  availability_zone = var.availability_zones[count.index]
  cidr_block = var.public_cidr_blocks[count.index]
  tags = {
    Name = "${var.username}-public-${var.subnet_names[count.index]}"
    Username = var.username
  }
}

resource "aws_subnet" "private_subnets" {
  count = var.number_of_subnet_per_az
  vpc_id = aws_vpc.main.id
  availability_zone = var.availability_zones[count.index]
  cidr_block = var.private_cidr_blocks[count.index]
  tags = {
    Name = "${var.username}-private-${var.subnet_names[count.index]}"
    Username = var.username
  }
}
