variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region to create the state bucket in"
  type        = string
}

variable "state_bucket_name" {
  description = "Name of the GCS bucket for Terraform state"
  type        = string
}

variable "kms_key_name" {
  description = "The KMS key name for bucket encryption (optional)"
  type        = string
  default     = null
}

variable "terraform_service_account_email" {
  description = "Email of the service account used by Terraform"
  type        = string
}
