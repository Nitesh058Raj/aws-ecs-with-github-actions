variable "bucket_name" {
  description = "Remote S3 Bucket Name"
  default = "cc-tf-state-backend-cicd"
  type = string
  validation {
    condition = can(regex("^([a-z0-9]{1}[a-z0-9-]{1,61}[a-z0-9]{1})$", var.bucket_name))
    error_message = "Bucket Name must not be empty and must follow S3 naming rules."
  }
}

variable "table_name" {
  default = "terraform-state-locking"
  description = "Dynamodb Table for locking"
}

variable "AWS_ACCESS_KEY" {
  type        = string
  default = ""
}

variable "AWS_SECRET_KEY" {
  type        = string
  default = ""
}
