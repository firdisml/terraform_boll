# Define Local Values in Terraform
locals {
  owners      = var.business_divsion
  environment = var.environment
  name        = "${var.business_divsion}-${var.environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
  aws_iam_oidc_connect_provider_extract_from_arn = element(split("oidc-provider/", "${data.terraform_remote_state.eks.outputs.oidc_provider_arn}"), 1)
}
