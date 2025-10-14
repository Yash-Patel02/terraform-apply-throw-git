resource "google_redis_instance" "redis" {
  name           = var.redis_name
  tier           = "BASIC"        
  memory_size_gb = 1
  region         = var.region
}


output "redis_host" {
  value = google_redis_instance.redis.host
}