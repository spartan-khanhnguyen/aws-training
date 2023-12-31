# aws general
variable "aws_config" {
  type = object({
    aws_region   = string
    aws_profile  = string
    aws_username = string
  })
}

# vpc
variable "aws_vpc" {
  type = object({
    id = string
  })
}
