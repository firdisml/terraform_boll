data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "daus-terraform"
    key    = "dev/eks-normal/terraform.tfstate"
    region = "us-east-1"
  }
}

data "aws_iam_policy_document" "csi" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${data.terraform_remote_state.eks.outputs.aws_iam_openid_connect_provider_extract_from_arn}:sub"
      values   = ["system:serviceaccount:kube-system:ebs-csi-controller-sa"]
    }
    principals {
      type        = "Federated"
      identifiers = [data.terraform_remote_state.eks.outputs.aws_iam_openid_connect_provider_arn]
    }
  }
} 