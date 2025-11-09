output "s3_bucket_name" {
  description = "Name of the S3 bucket used for Terraform state"
  value       = aws_s3_bucket.tf_state.bucket
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table used for Terraform locks"
  value       = var.lock_table_name
}
