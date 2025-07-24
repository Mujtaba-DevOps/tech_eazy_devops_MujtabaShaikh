## Assignment 1

variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu 22.04 LTS AMI"
  default     = "ami-053b0d53c279acc90"
}

variable "repo_url" {
  default = "https://github.com/techeazy-consulting/techeazy-devops.git"
}

variable "key_name" {
  description = "Name of existing AWS key pair"
  type        = string
}

variable "stage" {
  description = "Deployment stage"
  type        = string
  default     = "dev"
}



## Assignment 2 
variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name for SSH access"
  type        = string
}
