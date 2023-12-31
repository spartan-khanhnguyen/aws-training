# aws general
variable "aws_config" {
  type = object({
    aws_region   = string
    aws_profile  = string
    aws_username = string
  })
}

variable "aws_private_subnets" {
  type = list(object({
    id = string
  }))
}