variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name for SSH access"
  type        = string
}
