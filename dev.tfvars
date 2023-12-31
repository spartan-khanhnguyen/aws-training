# aws general
aws_config = {
  aws_region   = "us-west-2"
  aws_profile  = "850829820838_Trainnee"
  aws_username = "khanh.nguyen"
}

# vpc
vpc_config = {
  vpc_number_of_subnet_per_az = 2
  vpc_cidr_block              = "10.103.0.0/16"
  vpc_public_cidr_blocks      = ["10.103.1.0/24", "10.103.2.0/24"]
  vpc_private_cidr_blocks     = ["10.103.3.0/24", "10.103.4.0/24"]
  vpc_availability_zones      = ["us-west-2a", "us-west-2b"]
  vpc_subnet_names            = ["subnet-1", "subnet-2"]
}

# route table
route_table_config = {
  route_table_cidr_block = "0.0.0.0/0"
}

# security group
security_group_config = {
  allowed_inbounds = [
    {
      port        = "22"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      port        = "80"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      port        = "443"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

  allowed_outbounds = [
    {
      port        = "0"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}
