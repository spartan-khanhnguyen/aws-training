resource "aws_internet_gateway" "igw_main" {
  vpc_id = var.aws_vpc.id
  tags = {
    Name     = "${var.aws_config.aws_username}-igw"
    Username = var.aws_config.aws_username
  }
}