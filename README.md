# khanhnguyen-aws-training

Terraform modules for learning AWS.


Commands:

- `terraform init`
- `terraform fmt -recursive`
- `terraform validate`
- `terraform plan -var-file=dev.tfvars`
- `terraform apply -var-file=dev.tfvars`

Assignments:

>Lession 2
>
>Each user is responsible for creating their own Virtual Private Cloud (VPC) with an assigned specific Classless Inter-Domain Routing (CIDR) block.
>Within the VPC, create 4 subnets - 2 public and 2 private in 2 different AZs. All services within private subnets should have internet access on ports 22, 80, and 443, allowing external connections.
