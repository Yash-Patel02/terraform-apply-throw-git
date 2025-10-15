variable "PROJECT_ID" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}
variable "REGION" {
  description = "The region where the Cloud Run service will be deployed."
  type        = string
  
}
variable "BUCKET_NAME" {
  description = "The name of the storage bucket."
  type        = string
  
}
variable "PERSIMMON_IMAGES_BUCKET" {
  description = "The name of the Persimmon images storage bucket."
  type        = string
  
}