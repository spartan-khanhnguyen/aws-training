variable "username" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "number_of_subnet_per_az" {
  type = number
}

variable "public_cidr_blocks" {
  type = list(string)
}

variable "private_cidr_blocks" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "subnet_names" {
  type = list(string)
}

