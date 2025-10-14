provider "google" {
  region      = var.region
  project     = var.project_id
  credentials = file("C:/Users/persimmon-ai-cff4da30503c 2.json")
}

provider "google-beta" {
  credentials = file("C:/Users/persimmon-ai-cff4da30503c 2.json")
  project     = var.project_id
  region      = var.region
}
variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  
}