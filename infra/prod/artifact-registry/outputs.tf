output "backend_image_url" {
  description = "URL of the backend Docker image"
  value       = module.backend_artifact_registry.image_url
}

output "frontend_image_url" {
  description = "URL of the frontend Docker image"
  value       = module.frontend_artifact_registry.image_url
}

output "n8n_image_url" {
  description = "URL of the n8n Docker image"
  value       = module.n8n_artifact_registry.image_url
}