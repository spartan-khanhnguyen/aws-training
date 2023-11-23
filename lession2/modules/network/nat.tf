resource "aws_eip" "main" {
  tags = {
    Name     = "${var.username}-eip"
    Username = var.username
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.main.id
  subnet_id     = var.aws_private_subnets[0].id

  tags = {
    Name     = "${var.username}-nat"
    Username = var.username
  }
}