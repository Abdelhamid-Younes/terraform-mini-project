# AWS Nginx Deployment with Terraform

This project uses Terraform to deploy an infrastructure on AWS. The goal is to automatically provision resources for hosting Nginx, including EC2 instances, EBS volumes, elastic IP addresses, and security groups.
<p align="center">
  <img src="terraform project image.png" alt="terraform project image" />
</p>


## Project Goal

The objective of this project is to deploy the necessary AWS resources for hosting an Nginx web server automatically, including:

- **EC2 Instance** (Amazon Linux or Ubuntu)
- **EBS Volume**
- **Elastic IP Address**
- **Security Group** (for HTTP, HTTPS, and SSH access)

## Prerequisites

Before getting started, ensure the following tools are installed and configured on your machine:

- **AWS Account**: Ensure that you have an AWS account with access keys and sufficient permissions to deploy resources.
- **Terraform**: Install Terraform locally. You can download it from the official [Terraform website](https://www.terraform.io/downloads).
## Components

### Provider AWS
- **provider block**: Configures AWS with the specified region and shared credentials file.

### Backend S3
- **S3 Bucket**: Stores Terraform state in an S3 bucket to enable collaboration and state locking.

### EC2 Module
- Deploys an **EC2 instance** with a given instance type, key pair, and security group. The EC2 instance will have **Nginx installed and configured automatically** using a remote provisioner.

### EBS Module
- Creates an **EBS volume** of a specified size and attaches it to the EC2 instance.

### EIP Module
- Associates an **Elastic IP address** with the EC2 instance.

### Security Group (SG) Module
- Configures **security rules** to allow HTTP (port 80), HTTPS (port 443), and SSH (port 22) access.

## Usage

To deploy the configuration, follow these steps:

1. **Clone this repository** to your local machine:
   ```bash
   git clone https://github.com/your-repo/nginx-deployment-terraform.git
2. **Navigate to the project directory**:
   ```bash
   cd nginx-deployment-terraform
   
3. **Run the command** `terraform init` to initialize Terraform and download the required providers:
```bash
terraform init
```
4. **Run the command**  `terraform plan` to review the infrastructure changes that Terraform will apply:
```bash
   terraform plan
```
5. **Run the command** `terraform apply` to create the resources on AWS:
```bash
   terraform apply
```
## Cleanup
To avoid unnecessary charges, make sure to run `terraform destroy` in order to destroy the created resources after finishing your tests:
```bash
terraform destroy
```
This will remove the EC2 instance, EBS volume, elastic IP address, and security group.



