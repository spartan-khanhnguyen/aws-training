resource "aws_security_group" "private_sg" {
  vpc_id = var.aws_vpc.id
  name = "${var.username}-sg"

  tags = {
    Name = "${var.username}-private-sg"
    Username = var.username
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.allow_external_ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}