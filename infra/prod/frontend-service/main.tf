# data "terraform_remote_state" "artifact" {
#   backend = "gcs" # or s3/azurerm depending on your backend
#   config = {
#     bucket = "my-terraform-states"
#     prefix = "artifact"
#   }
# }

module "frontend_service" {
  source = "../../../modules/cloud-run"

  project_id   = var.PROJECT_ID
  region       = var.REGION_CLOUDRUN
  service_name = var.FRONTEND_SERVICE
  image_url    = ""#data.terraform_remote_state.artifact.outputs.frontend_image_url
  
  # Frontend-specific configuration
  container_port                    = 8080
  cpu_limit                        = "1000m"
  memory_limit                     = "512Mi"
  max_instance_request_concurrency = 80
  enable_volume_mount              = false
  max_instance_count = var.MAX_INSTANCE_COUNT
  timeout = var.TIMEOUT
   bucket_name                      = "" #data.terraform_remote_state.storage.outputs.storage_bucket_name
  volume_mount_path                = "/persimmon-data"
  environment_variables={}
}
output "frontend_service_url" {
  value = module.frontend_service.service_url
  
}