variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for backend resources"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name for Terraform state"
}

variable "lock_table_name" {
  type        = string
  description = "DynamoDB table name for Terraform lock"
}

variable "create_lock_table" {
  description = "Create the DynamoDB table for state locking (set false when an existing table is used)"
  type        = bool
  default     = false
}

variable "kms_key_arn" {
  type        = string
  description = "Optional KMS key ARN for bucket encryption; if null, AES256 will be used."
  default     = null
}

variable "noncurrent_version_expiration_days" {
  type        = number
  description = "Number of days to retain noncurrent object versions"
  default     = 90
}

variable "abort_multipart_days" {
  type        = number
  description = "Abort incomplete multipart uploads after this many days"
  default     = 7
}
