terraform {
  backend "s3" {
    bucket = "dev-group17-project"
    key    = "dev-network/terraform.tfstate"
    region = "us-east-1"
  }
}
