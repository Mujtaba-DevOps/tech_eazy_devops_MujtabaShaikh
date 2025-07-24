#!/bin/bash

# S3 bucket to check
S3_BUCKET="my-assignment2-bucket-tech-eazy"

# Try to list files in the bucket
aws s3 ls s3://$S3_BUCKET/

# Check if the command succeeded
if [ $? -eq 0 ]; then
  echo "✅ Read access to bucket $S3_BUCKET confirmed."
else
  echo "❌ No read access to bucket $S3_BUCKET."
fi
