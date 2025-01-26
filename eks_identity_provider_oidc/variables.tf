variable "eks_region" {
  description = "TFState file bucket region"
  type        = string
  default     = "us-east-1"
}

variable "eks_oidc_thumbprint" {
  description = "EKS OIDC Thumbprint"
  type        = string
  default     = "9e99a48a9960b14926bb7f3b02e22da2b0ab7280"
}

variable "eks_generic_tag" {
  description = "Your bastion host generic tag"
  type        = map(string)
  default = {
    "vpc" = "daus-general-vpc"
  }
}
