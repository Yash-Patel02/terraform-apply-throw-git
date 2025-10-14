variable "region" {
  description = "region for the redis"
}

variable "redis_name" {
  description = "name for the redis"
   default = "my-redis-instance"
}
variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}