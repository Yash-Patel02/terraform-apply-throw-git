terraform {
  backend "gcs" {
    bucket = "akiam-statefiles-storage-bucket"
    prefix = "aikam-tf-prod/artifact-registry"
    credentials = "/home/runner/gcp-key.json"
  }
}