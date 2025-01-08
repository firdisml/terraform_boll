vpc_aws_region = "us-east-1"

vpc_name = "daus-k8s-vpc"

vpc_cidr = "192.168.0.0/16"

enable_dns_hostnames = true

enable_dns_support = true

map_public_ip_on_launch = true

vpc_public_subnet = [
  "192.168.1.0/24",
  "192.168.2.0/24"
]

vpc_public_subnet_tags = {
  "Type"     = "daus-public-subnet",
  "VPC Name" = "daus-k8s-vpc"
}

vpc_tags = {
  "VPC Name" = "daus-k8s-vpc"
}
