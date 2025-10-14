module "backend_artifact_registry" {
  source = "../../../modules/artifact-registry"

  project_id    = var.PROJECT_ID
  region        = var.REGION_CONTAINER_REPO
  repository_id = "${var.REPOSITORY_ID}-backend"
  image_name    = var.IMAGE_NAME
}

module "frontend_artifact_registry" {
  source = "../../../modules/artifact-registry"

  project_id    = var.PROJECT_ID
  region        = var.REGION_CONTAINER_REPO
  repository_id = "${var.REPOSITORY_ID}-frontend"
  image_name    = var.APP_IMAGE_NAME
}
module "n8n_artifact_registry" {
  source = "../../../modules/artifact-registry"

  project_id    = var.PROJECT_ID
  region        = var.REGION_CONTAINER_REPO
  repository_id = var.REPOSITORY_ID
  image_name    = var.N8N_IMAGE_NAME
}