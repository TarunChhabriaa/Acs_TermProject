terraform {
  backend "s3" {
    bucket = "staging-group17-project"
    key    = "staging-network/terraform.tfstate"
    region = "us-east-1"
  }
}
