# Terraform AWS Infrastructure

This repository contains a Terraform-based AWS infrastructure deployment with a remote S3 backend for state storage.

## What is included

- `terraform.tf`: Root Terraform configuration that configures an S3 backend and shared settings.
- `infra/`: Terraform module for AWS infrastructure.
  - `providers.tf`: AWS provider configuration.
  - `backend.tf`: Remote S3 backend configuration.
  - `main.tf`: VPC and AWS resource definitions.
  - `variables.tf`: Terraform input variables.
  - `outputs.tf`: Terraform outputs (currently empty).
  - `user_data.sh`: Optional user data script for EC2 instances.
- `Dockerfile` and `index.html`: Additional project files present in the repository root.

## Prerequisites

- Terraform 1.0 or newer
- AWS CLI configured with credentials for the target AWS account
- Access to the configured S3 bucket and DynamoDB table for remote state locking

## How to use

1. Initialize Terraform from the repository root:

   ```bash
   terraform init
   ```

2. Review the planned changes:

   ```bash
   terraform plan
   ```

3. Apply the infrastructure:

   ```bash
   terraform apply
   ```

## Notes

- Remote state is configured in `terraform.tf` and `infra/backend.tf` using an S3 bucket and DynamoDB locking.
- The `infra/` module currently defines a single AWS VPC resource.
- `.gitignore` ignores Terraform local state files, `.terraform` directories, CLI configuration, and sensitive variable files.
