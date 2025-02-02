output "ebs_csi_iam_policy_arn" {
  value = aws_iam_role.eks_ebs_csi_role.arn
}