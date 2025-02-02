terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "daus-terraform"
    key    = "dev/eks/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "daus-terraform-eks"
  }
}

provider "aws" {
  region = var.eks_region
}
