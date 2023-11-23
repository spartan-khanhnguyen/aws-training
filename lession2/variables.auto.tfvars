# General
username = "khanh.nguyen"
region   = "ap-southeast-1"
profile  = "850829820838_PowerUserAccess"

# VPC
number_of_subnet_per_az = 2
vpc_cidr_block          = "10.103.0.0/16"
public_cidr_blocks      = ["10.103.1.0/24", "10.103.2.0/24"]
private_cidr_blocks     = ["10.103.10.0/24", "10.103.11.0/24"]
availability_zones      = ["ap-southeast-1a", "ap-southeast-1b"]
subnet_names            = ["subnet-1", "subnet-2"]

# Network
router_table_cidr_block = "0.0.0.0/0"

# Security Group
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