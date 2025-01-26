resource "aws_iam_openid_connect_provider" "default" {
  url = data.terraform_remote_state.vpc.outputs.eks_oidc_issuer

  client_id_list = ["sts.${data.aws_partition.current.dns_suffix}"]

  thumbprint_list = [var.eks_oidc_thumbprint]

  tags = var.eks_generic_tag
}
