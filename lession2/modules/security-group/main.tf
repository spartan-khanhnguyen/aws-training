resource "aws_security_group" "private_sg" {
  vpc_id = var.aws_vpc.id
  name   = "${var.username}-sg"

  tags = {
    Name     = "${var.username}-private-sg"
    Username = var.username
  }

  dynamic "egress" {
    for_each = var.allowed_outbounds
    content {
      from_port   = egress.value.port
      to_port     = egress.value.port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }

  dynamic "ingress" {
    for_each = var.allowed_inbounds
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}