terraform {
  backend "gcs" {
    bucket = "akiam-statefiles-storage-bucket"
    prefix = "aikam-tf-qa/artifact-registry"
    credentials = file("/home/runner/gcp-key.json")
  }
}