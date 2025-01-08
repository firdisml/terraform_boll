output "output_vpc_id" {
  value = module.vpc.vpc_id
}

output "output_vpc_public_subnet" {
  value = module.vpc.public_subnets
}
