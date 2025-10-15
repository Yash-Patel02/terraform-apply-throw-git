variable "PROJECT_ID" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}
variable "REGION_CLOUDRUN" {
  description = "The region where the Cloud Run service will be deployed."
  type        = string
  
}
variable "FRONTEND_SERVICE" {
  description = "The name of the frontend service."
  type        = string
  
}
variable "REGION" {
  description = "The region where the frontend service will be deployed."
  type        = string
  

}

variable "MAX_INSTANCE_COUNT" {
  description = "Max instance count for service"
}

variable "TIMEOUT" {
  description = "Max instance count for service"
}