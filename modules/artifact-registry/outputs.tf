output "repository_id" {
  description = "ID of the artifact registry repository"
  value       = google_artifact_registry_repository.container_repo.repository_id
}

output "repository_url" {
  description = "URL of the artifact registry repository"
  value       = google_artifact_registry_repository.container_repo.name
}

output "image_url" {
  description = "URL of the Docker image (if image_name was provided)"
  value       = var.image_name != null ? data.google_artifact_registry_docker_image.container_image[0].self_link : null
}

output "location" {
  description = "Location of the artifact registry repository"
  value       = google_artifact_registry_repository.container_repo.location
}
