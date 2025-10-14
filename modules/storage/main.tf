resource "google_storage_bucket" "bucket" {
  location = var.region
  name     = var.bucket_name

  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy              = var.force_destroy

  dynamic "versioning" {
    for_each = var.versioning_enabled ? [1] : []
    content {
      enabled = true
    }
  }

  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rules
    content {
      condition {
        age = lifecycle_rule.value.age
      }
      action {
        type = lifecycle_rule.value.action
      }
    }
  }
}

resource "google_storage_bucket_iam_member" "bucket_access" {
  count  = var.service_account_email != null ? 1 : 0
  bucket = google_storage_bucket.bucket.name
  role   = var.iam_role
  member = "serviceAccount:${var.service_account_email}"
}
