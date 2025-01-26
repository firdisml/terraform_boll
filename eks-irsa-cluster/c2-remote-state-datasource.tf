data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "daus-terraform"
    key    = "dev/eks/terraform.tfstate"
    region = "us-east-1"
  }
}
