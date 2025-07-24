✅ Assignment 1: EC2 Deployment with Shell Script
Objective:
Provision an EC2 instance using Terraform, and configure it using a startup shell script.

Includes:

Terraform configuration files

userdata.sh to install Nginx during instance launch

Output the public IP of the instance

Steps:

terraform init

terraform plan

terraform apply

Access the EC2 public IP in the browser to confirm Nginx is running

✅ Assignment 2: EC2 + S3 with IAM Role
Objective:
Provision an EC2 instance that uploads a file to an S3 bucket using an IAM role (no access key used).

Includes:

Terraform for EC2 + IAM + S3 setup

Shell script to upload a file to S3 from EC2

Output for S3 bucket name and EC2 public IP

Steps:

terraform init

terraform plan

terraform apply

SSH into EC2 and run upload-to-s3.sh

Confirm file appears in the S3 bucket

