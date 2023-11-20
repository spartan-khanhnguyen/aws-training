resource "aws_route_table" "public_subnets" {
  vpc_id = var.aws_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = {
    Name = "${var.username}-public-rt"
    Username = var.username
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  count          = var.number_of_subnet_per_az
  subnet_id      = var.aws_public_subnets[count.index].id
  route_table_id = aws_route_table.public_subnets.id
}