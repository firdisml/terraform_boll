module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs            = data.aws_availability_zones.aws_az_data.names
  public_subnets = var.vpc_public_subnet

  private_subnet_names = ["${var.vpc_name}-private-subnet-1", "${var.vpc_name}-private-subnet-2"]
  public_subnet_names  = ["${var.vpc_name}-public-subnet-1", "${var.vpc_name}-public-subnet-2"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  map_public_ip_on_launch = true

  public_subnet_tags = var.vpc_public_subnet_tags
  vpc_tags           = var.vpc_tags
}
