variable "eks_region" {
  description = "EKS cluster region"
  type        = string
  default     = "us-east-1"
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "daus-eks"
}

variable "eks_k8s_version" {
  description = "The version of k8s deployed in EKS"
  type        = string
  default     = "1.31"
}

variable "eks_generic_tag" {
  description = "Your bastion host generic tag"
  type        = map(string)
  default = {
    "vpc" = "daus-k8s-vpc"
  }
}
