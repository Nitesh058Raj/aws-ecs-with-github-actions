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

**AWS Configuration**: Set up your AWS credentials as GitHub secrets:
   - `AWS_ACCESS_KEY`: Your AWS access key.
   - `AWS_SECRET_KEY`: Your AWS secret key.
   - `AWS_REGION`: Your preferred AWS region.
   - `REPO_NAME`: ECR Repository name


### GitHub Actions
On every push to the repository's main branch or manually triggering the workflow, the GitHub Actions workflow defined in express.yml will run, automating the deployment process. 
Every push on the specified branch (branch-name as configured in express.yml) will recreate the infrastructure on AWS and deploy the container using AWS ECS.


### ECS Infrastructure
Navigate to the terr-ecs directory and apply the Terraform configuration to deploy ECS infrastructure.
```bash
cd terr-ecs
terraform init
terraform apply --auto-approve
```

### Docker Container
Build the Docker container for your application using the provided Dockerfile. (This project has a simple express app that will listen on port 3000)
<hr/>

### Output
You can see the application with the public IP from ECS. (https://public_ip:3000).
You will see this message on the website: `Hello, Express is working fine... :)`

### Customization
Feel free to customize the Terraform configurations, Dockerfile, and application code to suit your specific needs.

### Acknowledgments
- [Terraform](https://www.terraform.io/)
- [GitHub Actions](https://github.com/features/actions)

Feel free to contribute to this repository by submitting issues or pull requests.

