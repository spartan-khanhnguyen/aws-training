# General
variable "region" {
  type = string
}

variable "profile" {
  type = string
}

# VPC
variable "username" {
  type = string
}

variable "number_of_subnet_per_az" {
  type = number
}

variable "vpc_cidr_block" {
  type = string
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

# Network
variable "router_table_cidr_block" {
  type = string
}

# Security Group
variable "allowed_inbounds" {
  type = list(object({
    port        = string
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "allowed_outbounds" {
  type = list(object({
    port        = string
    protocol    = string
    cidr_blocks = list(string)
  }))
}