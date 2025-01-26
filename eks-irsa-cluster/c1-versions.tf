# Terraform Settings Block
terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.35.1"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "daus-terraform"
    key    = "dev/eks-irsa/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "eks-irsa"
  }
}
