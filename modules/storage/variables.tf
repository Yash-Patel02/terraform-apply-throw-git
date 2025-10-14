variable "region" {
  description = "The region to host the storage bucket in"
  type        = string
}

variable "bucket_name" {
  description = "The cloud storage bucket name"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "uniform_bucket_level_access" {
  description = "Enable uniform bucket-level access"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Allow deletion of non-empty bucket"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable object versioning"
  type        = bool
  default     = false
}

variable "lifecycle_rules" {
  description = "List of lifecycle rules for the bucket"
  type = list(object({
    age    = number
    action = string
  }))
  default = []
}

variable "service_account_email" {
  description = "Service account email for IAM binding (optional)"
  type        = string
  default     = null
}

variable "iam_role" {
  description = "IAM role to assign to the service account"
  type        = string
  default     = "roles/storage.objectAdmin"
}

variable "description" {
  description = "Description of the storage bucket purpose"
  type        = string
  default     = "Cloud Storage bucket"
}
