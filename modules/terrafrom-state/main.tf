resource "google_storage_bucket" "terraform_state" {
  name          = var.state_bucket_name
  location      = var.region
  project       = var.project_id
  force_destroy = false

  # Enable versioning for state file history
  versioning {
    enabled = true
  }

  # Prevent accidental deletion
  lifecycle {
    prevent_destroy = true
  }

  # Enable uniform bucket-level access
  uniform_bucket_level_access = true

  # Encryption configuration
  encryption {
    default_kms_key_name = var.kms_key_name
  }

  # Public access prevention
  public_access_prevention = "enforced"
}

# IAM binding for Terraform service account
resource "google_storage_bucket_iam_member" "terraform_state_admin" {
  bucket = google_storage_bucket.terraform_state.name
  role   = "roles/storage.admin"
  member = "serviceAccount:${var.terraform_service_account_email}"
}
