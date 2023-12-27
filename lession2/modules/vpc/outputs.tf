output "aws_vpc" {
  value = aws_vpc.main
}

output "aws_public_subnets" {
  value = aws_subnet.public_subnets
}

output "aws_private_subnets" {
  value = aws_subnet.private_subnets
}