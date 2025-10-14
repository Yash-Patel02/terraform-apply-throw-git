variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}
variable "region_cloudrun" {
  description = "The region where the Cloud Run service will be deployed."
  type        = string
  
}
variable "frontend_service" {
  description = "The name of the frontend service."
  type        = string
  
}
variable "region" {
  description = "The region where the frontend service will be deployed."
  type        = string
  

}

variable "max_instance_count" {
  description = "Max instance count for service"
}

variable "timeout" {
  description = "Max instance count for service"
}