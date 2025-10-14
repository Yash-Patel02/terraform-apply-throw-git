provider "google" {
  region      = var.REGION
  project     = var.PROJECT_ID
  credentials = file("/home/runner/gcp-key.json")
}

provider "google-beta" {
  credentials = file("/home/runner/gcp-key.json")
  region      = var.REGION
  project     = var.PROJECT_ID
}
