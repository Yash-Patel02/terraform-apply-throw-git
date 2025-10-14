module "app_data_storage" {
  source = "../../../modules/storage"

  project_id                  = var.project_id
  region                     = var.region
  bucket_name                = "${var.bucket_name}-dev"
  uniform_bucket_level_access = true
  force_destroy              = true  # Allow destruction in dev environment
  versioning_enabled         = false
}

module "images_storage" {
  source = "../../../modules/storage"

  project_id                  = var.project_id
  region                     = var.region
  bucket_name                = "${var.PERSIMMON_IMAGES_BUCKET}-dev"
  uniform_bucket_level_access = true
  force_destroy              = true  # Allow destruction in dev environment
  versioning_enabled         = false
}

output "storage_bucket_name" {
  description = "Name of the created storage bucket"
  value       = module.app_data_storage.bucket_name
}

output "images_storage_bucket_name" {
  description = "Name of the images storage bucket"
  value       = module.images_storage.bucket_name
}