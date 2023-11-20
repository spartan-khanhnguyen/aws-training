variable "aws_vpc" {
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

variable "username" {
  type = string
}

variable "number_of_subnet_per_az" {
  type = number
}
