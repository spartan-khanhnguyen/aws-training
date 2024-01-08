# aws general
variable "aws_config" {
  type = object({
    aws_region   = string
    aws_profile  = string
    aws_username = string
  })
}

# vpc_config
variable "vpc_config" {
  type = object({
    vpc_number_of_subnet_per_az = number
    vpc_cidr_block              = string
    vpc_public_cidr_blocks      = list(string)
    vpc_private_cidr_blocks     = list(string)
    vpc_availability_zones      = list(string)
    vpc_subnet_names            = list(string)
  })
}

# vpc
variable "aws_vpc" {
  type = object({
    id = string
  })
}

variable "route_table_config" {
  type = object({
    route_table_cidr_block = string
  })
}

variable "aws_igw" {
  type = object({
    id = string
  })
}

variable "aws_nat" {
  type = object({
    id = string
  })
}

variable "aws_public_subnets" {
  type = list(object({
    id = string
  }))
}

variable "aws_private_subnets" {
  type = list(object({
    id = string
  }))
}