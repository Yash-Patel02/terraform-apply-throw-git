variable "PROJECT_ID" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable "REGION_CONTAINER_REPO" {
  description = "The location of the Artifact Registry repository."
  type        = string
}

variable "REPOSITORY_ID" {
  description = "The ID of the Artifact Registry repository."
  type        = string
}

variable "IMAGE_NAME" {
  description = "The name of the container image."
  type        = string
}

variable "APP_IMAGE_NAME" {
  description = "The name of the application container image."
  type        = string
}

variable "REGION" {
  description = "The region to host the resource."
  type        = string
}

variable "N8N_IMAGE_NAME" {
  description = "The name of the n8n container image."
  type        = string
}
