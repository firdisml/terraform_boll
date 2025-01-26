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
    key    = "dev/identity-provider-oidc/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "identity-provider-oidc"
  }
}

provider "aws" {
  region = var.eks_region
}
