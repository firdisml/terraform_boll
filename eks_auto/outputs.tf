output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_certificate_authority_data" {
  value = module.eks.cluster_certificate_authority_data
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_oidc_issuer" {
  value = module.eks.cluster_dualstack_oidc_issuer_url
}

output "cluster_id" {
  value = module.eks.cluster_id
}

output "oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}

output "oidc_provider" {
  value = module.eks.oidc_provider
}
