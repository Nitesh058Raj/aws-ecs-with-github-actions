# Deploy AWS ECS with Terraform using GitHub Actions

This repository contains code and configurations to deploy an application using AWS ECS (Elastic Container Service) and Terraform. The repository includes infrastructure setup using Terraform and GitHub Actions workflows to automate deployment.

## Prerequisites

Before you begin, make sure you have the following:

- AWS account
- GitHub account
- AWS access key and secret key stored as GitHub secrets
- Basic familiarity with AWS ECS, Terraform, and GitHub Actions

## Repository Structure

- `.github/workflow/express.yml`: GitHub Actions workflow file responsible for automating the deployment process.
- `terraform-backend-resources/`: Terraform code to set up backend AWS resources like S3 and DynamoDB tables.
- `terra-ecs/`: Terraform code to deploy ECS infrastructure.
- `Dockerfile`: Docker configuration to build the application container.
- `index.js`: Sample Express.js application code.
- `package.json`: Node.js package configuration.

## Usage

1. **AWS Configuration**: Set up your AWS credentials as GitHub secrets:
   - `AWS_ACCESS_KEY`: Your AWS access key.
   - `AWS_SECRET_KEY`: Your AWS secret key.
   - `AWS_REGION`: Your preferred AWS region.
   - `REPO_NAME`: ECR Repository name

2. **Terraform Backend Resources**: Navigate to the `terraform-backend-resources` directory and apply the Terraform configuration to create backend resources.

   ```sh
   cd terraform-backend-resources
   terraform init
   terraform apply --auto-approve
