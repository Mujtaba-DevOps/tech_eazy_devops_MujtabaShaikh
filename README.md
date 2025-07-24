<<<<<<< HEAD
## Assignment 2 – EC2 with S3 Read Access (Tech Eazy DevOps)

This assignment provisions an EC2 instance using Terraform and verifies that it can **read** from an S3 bucket using an attached IAM role.

### Files Included:
- `main.tf` – Creates EC2, IAM role, S3 bucket, and policies
- `variables.tf` – Input variables for reusability
- `outputs.tf` – Shows important output info (like public IP)
- `verify_read_access.sh` – Bash script to test S3 read access from EC2

### Steps Performed:
1. Created an IAM role and attached a policy for S3 **read-only** access.
2. Launched an EC2 instance using Terraform with that IAM role.
3. Uploaded test files to the S3 bucket manually.
4. SSHed into the EC2 instance and ran `verify_read_access.sh` to confirm access.

✅ Result: EC2 successfully read from S3 using the IAM role.
=======
🔧 Project Name:
TechEazy DevOps - Spring Boot Deployment on AWS EC2
A simple Java backend deployed using a CI/CD pipeline to an EC2 instance with port exposure and access logging.

>>>>>>> 65dd97b3564462b339ac7b2b018625f113bc3399

