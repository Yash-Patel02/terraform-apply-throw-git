variable "region" {
  description = "The region to host the Cloud Run service in"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "service_name" {
  description = "Cloud Run service name"
  type        = string
}

variable "image_url" {
  description = "Docker image URL"
  type        = string
}

variable "container_port" {
  description = "Container port"
  type        = number
 
}

variable "cpu_limit" {
  description = "CPU limit"
  type        = string

}

variable "memory_limit" {
  description = "Memory limit"
  type        = string
  
}

variable "max_instance_count" {
  description = "Maximum instance count"
  type        = number
  
}



variable "max_instance_request_concurrency" {
  description = "Maximum instance request concurrency"
  type        = number
 
}

variable "timeout" {
  description = "Request timeout"
  type        = string
 
}

variable "environment_variables" {
  description = "Environment variables for the container"
  type        = map(string)
  
}

variable "enable_volume_mount" {
  description = "Enable GCS volume mount"
  type        = bool
  
}

variable "bucket_name" {
  description = "Storage bucket name for volume mounting"
  type        = string
  
}

variable "volume_mount_path" {
  description = "Volume mount path"
  type        = string
  
}


