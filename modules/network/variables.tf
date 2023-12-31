# aws general
variable "aws_config" {
  type = object({
    aws_region   = string
    aws_profile  = string
    aws_username = string
  })
}

# vpc
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

variable "route_table_config" {
  type = object({
    route_table_cidr_block = string
  })
}

variable "security_group_config" {
  type = object({
    allowed_inbounds = list(object({
      port        = string
      protocol    = string
      cidr_blocks = list(string)
    }))
    allowed_outbounds = list(object({
      port        = string
      protocol    = string
      cidr_blocks = list(string)
    }))
  })
}
