terraform {
  backend "gcs" {
    bucket = "akiam-statefiles-storage-bucket"
    prefix = "aikam-tf-prod/backend-service"
    credentials = "home/runner/gcp-key.json"
  }
}