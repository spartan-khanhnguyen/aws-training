resource "aws_security_group" "private_sg_main" {
  vpc_id = var.aws_vpc.id
  name   = "${var.aws_config.aws_username}-sg"
  tags = {
    Name     = "${var.aws_config.aws_username}-sg"
    Username = var.aws_config.aws_username
  }

  dynamic "egress" {
    for_each = var.security_group_config.allowed_outbounds
    content {
      from_port   = egress.value.port
      to_port     = egress.value.port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }

  dynamic "ingress" {
    for_each = var.security_group_config.allowed_inbounds
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}