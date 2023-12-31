# aws general
variable "aws_config" {
  type = object({
    aws_region   = string
    aws_profile  = string
    aws_username = string
  })
}

variable "aws_vpc" {
  type = object({
    id = string
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
