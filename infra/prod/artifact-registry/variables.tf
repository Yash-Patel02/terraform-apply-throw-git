variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}
variable "region_container_repo" {
  description = "The location of the Artifact Registry repository."
  type        = string
}
variable "repository_id" {
  description = "The ID of the Artifact Registry repository."
  type        = string
}
variable "image_name" {
  description = "The name of the container image."
  type        = string

}
variable "app_image_name" {
  description = "The name of the application container image."
  type        = string
}
variable "region" {
  description = "The region to host the resource."
  type        = string
  
}
variable "n8n_image_name" {
  description = "The name of the n8n container image."
  type        = string
}