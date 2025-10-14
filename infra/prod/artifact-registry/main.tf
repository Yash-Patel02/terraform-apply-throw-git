module "backend_artifact_registry" {
  source = "../../../modules/artifact-registry"

  project_id    = var.project_id
  region        = var.region_container_repo
  repository_id = "${var.repository_id}-backend"
  image_name    = var.image_name
}

module "frontend_artifact_registry" {
  source = "../../../modules/artifact-registry"

  project_id    = var.project_id
  region        = var.region_container_repo
  repository_id = "${var.repository_id}-frontend"
  image_name    = var.app_image_name
}
module "n8n_artifact_registry" {
  source = "../../../modules/artifact-registry"

  project_id    = var.project_id
  region        = var.region_container_repo
  repository_id = var.repository_id
  image_name    = var.n8n_image_name
}