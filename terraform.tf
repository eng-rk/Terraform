# Root Terraform configuration for the project
# This file configures a remote S3 backend so running Terraform from
# the repository root will use the same remote state as the infra/ folder.

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "rowan-terraform-state-2026"
    key            = "assignment/alb-asg/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rowan-terraform-locks"
    encrypt        = true
  }
}
