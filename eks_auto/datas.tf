data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "daus-terraform"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
