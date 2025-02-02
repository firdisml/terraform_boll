module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.0"

  cluster_name                   = var.eks_cluster_name
  cluster_version                = var.eks_k8s_version
  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  cluster_compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  vpc_id     = data.terraform_remote_state.vpc.outputs.output_vpc_id
  subnet_ids = data.terraform_remote_state.vpc.outputs.output_vpc_public_subnet

  tags = var.eks_generic_tag
}
