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

variable "devops-key" {
  description = "Name of existing AWS key pair"
  type        = string
}
