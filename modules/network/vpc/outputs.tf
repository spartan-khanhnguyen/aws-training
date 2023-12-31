output "aws_vpc" {
  value = aws_vpc.vpc_main
}

output "aws_public_subnets" {
  value = aws_subnet.vpc_public_subnet
}

output "aws_private_subnets" {
  value = aws_subnet.vpc_private_subnet
}