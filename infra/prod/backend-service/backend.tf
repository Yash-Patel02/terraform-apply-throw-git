terraform {
  backend "gcs" {
    bucket = "akiam-statefiles-storage-bucket"
    prefix = "aikam-tf-qa/backend-service"
    credentials = "home/runner/gcp-key.json"
  }
}