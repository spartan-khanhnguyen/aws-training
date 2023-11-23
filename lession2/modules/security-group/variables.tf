variable "aws_vpc" {
  type = object({
    id = string
  })
}

variable "username" {
  type = string
}

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
