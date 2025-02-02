resource "aws_iam_role" "eks_ebs_csi_role" {
  name = "eks-ebs-csi-role"
  assume_role_policy = data.aws_iam_policy_document.csi.json
  
}

resource "aws_iam_role_policy_attachment" "amazon_ebs_csi_driver" {
  role = aws_iam_role.eks_ebs_csi_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
}

resource "aws_eks_addon" "csi_driver" {
  cluster_name = data.terraform_remote_state.eks.outputs.cluster_id
  addon_name = "aws-ebs-csi-driver"
  addon_version = "v1.39.0-eksbuild.1"
  service_account_role_arn = aws_iam_role.eks_ebs_csi_role.arn
}