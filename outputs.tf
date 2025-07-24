output "bucket_name" {
  value = aws_s3_bucket.assignment2_bucket.id
}

output "ec2_instance_id" {
  value = aws_instance.assignment2_ec2.id
}
