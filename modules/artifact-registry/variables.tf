variable "region" {
  description = "The region to host the artifact registry in"
  type        = string
}

variable "repository_id" {
  description = "The repository ID for the artifact registry"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "image_name" {
  description = "The Docker image name (optional - used for data source lookup)"
  type        = string
  default     = null
}