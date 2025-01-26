data "aws_partition" "current" {}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "daus-terraform"
    key    = "dev/eks/terraform.tfstate"
    region = "us-east-1"
  }
}
