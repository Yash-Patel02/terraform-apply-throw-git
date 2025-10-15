terraform {
  backend "gcs" {
    bucket = "akiam-statefiles-storage-bucket"
    prefix = "aikam-tf-qa/frontend-service"
    credentials = "home/runner/gcp-key.json"
  }
}