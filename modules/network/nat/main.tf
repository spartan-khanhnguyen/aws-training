resource "aws_eip" "eip_main" {
  tags = {
    Name     = "${var.aws_config.aws_username}-eip"
    Username = var.aws_config.aws_username
  }
}

resource "aws_nat_gateway" "nat_main" {
  allocation_id = aws_eip.eip_main.id
  subnet_id     = var.aws_private_subnets[0].id
  tags = {
    Name     = "${var.aws_config.aws_username}-nat"
    Username = var.aws_config.aws_username
  }
}