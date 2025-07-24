## Assignmnet 1
provider "aws" {
  region = var.region
}

resource "aws_instance" "dev_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("user_data.sh")

  tags = {
    Name = "TechEazy-EC2"
  }

  vpc_security_group_ids = [aws_security_group.allow_http.id]
}

resource "aws_security_group" "allow_http" {
  name_prefix = "allow-http-"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


## Assignment 2
provider "aws" {
  region = "us-east-1"
}

# S3 bucket
resource "aws_s3_bucket" "assignment2_bucket" {
  bucket = var.bucket_name

  tags = {
    Project = "Assignment 2"
  }
}

# S3 bucket lifecycle (separate resource as per Terraform best practice)
resource "aws_s3_bucket_lifecycle_configuration" "assignment2_lifecycle" {
  bucket = aws_s3_bucket.assignment2_bucket.id

  rule {
    id     = "expire-after-7-days"
    status = "Enabled"

    filter {
      prefix = ""
    }

    expiration {
      days = 7
    }
  }
}

# IAM Instance Profile (assumes the IAM role already exists in AWS)
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "writeonly-ec2-profile"
  role = "WriteOnlyS3Role"
}

# EC2 Instance
resource "aws_instance" "assignment2_ec2" {
  ami                  = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type        = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  key_name             = var.key_name

  tags = {
    Name    = "Assignment2Instance"
    Project = "Assignment 2"
  }
}
