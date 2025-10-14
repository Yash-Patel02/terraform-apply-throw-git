resource "google_artifact_registry_repository" "container_repo" {
  location      = var.region
  repository_id = var.repository_id
  format        = "DOCKER"
}

data "google_artifact_registry_docker_image" "container_image" {
  count         = var.image_name != null ? 1 : 0
  location      = google_artifact_registry_repository.container_repo.location
  repository_id = google_artifact_registry_repository.container_repo.repository_id
  image_name    = var.image_name
}
