terraform {
  backend "s3" {
    bucket         = "rowan-terraform-state-2026"
    key            = "assignment/alb-asg/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rowan-terraform-locks"
    encrypt        = true
  }
}