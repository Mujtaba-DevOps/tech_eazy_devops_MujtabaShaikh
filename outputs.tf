## Assignment 1
output "bucket_name" {
  value = aws_s3_bucket.assignment2_bucket.id
}

output "ec2_instance_id" {
  value = aws_instance.assignment2_ec2.id
}

## Assignment 2
output "public_ip" {
  value = aws_instance.dev_ec2.public_ip
}

