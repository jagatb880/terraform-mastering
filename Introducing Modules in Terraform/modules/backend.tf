# backend.tf

terraform {
  backend "s3" {
    bucket = "terraformproject233"
    key    = "s3/terraform.tfstate"
    region = "us-east-1"
  }
}
