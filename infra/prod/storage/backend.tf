terraform {
  backend "gcs" {
    bucket = "akiam-statefiles-storage-bucket"
    prefix = "aikam-tf-qa/storage"
    credentials = "home/runner/gcp-key.json"
  }
}