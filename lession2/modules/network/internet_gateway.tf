resource "aws_internet_gateway" "main" {
  vpc_id = var.aws_vpc.id
  tags = {
    Name = "${var.username}-igw"
    Username = var.username
  }
}