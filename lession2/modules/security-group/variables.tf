variable "aws_vpc" {
  type = object({
    id = string
  })
}

variable "username" {
  type = string
}

variable allow_external_ports {
  type = list(number)
  default = [80, 22, 443]
}