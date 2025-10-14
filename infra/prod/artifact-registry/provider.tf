provider "google" {
  region      = var.REGION
  project     = var.PROJECT_ID
  credentials = file("${HOME}/gcp-key.json")
}

provider "google-beta" {
  credentials = file("${HOME}/gcp-key.json")
  region      = var.REGION
  project     = var.PROJECT_ID
}
