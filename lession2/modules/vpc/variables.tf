variable "username" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
  default = "10.103.0.0/16"
  description = "CIDR block for VPC"
}

variable "number_of_subnet_per_az" {
  type = number
}

variable "public_cidr_blocks" {
  type = list(string)
  default = ["10.103.1.0/24", "10.103.2.0/24"]
}

variable "private_cidr_blocks" {
  type = list(string)
  default = ["10.103.10.0/24", "10.103.11.0/24"]
}

variable "availability_zones" {
  type = list(string)
  default = ["ap-southeast-1a", "ap-southeast-1b"]
}

variable "subnet_names" {
  type = list(string)
  default = ["subnet-1", "subnet-2"]
}

