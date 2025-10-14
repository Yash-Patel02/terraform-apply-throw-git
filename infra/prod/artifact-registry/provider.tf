provider "google" {
  region      = var.REGION
  project     = var.PROJECT_ID
  credentials = file("C:/Users/persimmon-ai-cff4da30503c 2.json")
}

provider "google-beta" {
  credentials = file("C:/Users/persimmon-ai-cff4da30503c 2.json")
  region      = var.REGION
  project     = var.PROJECT_ID
}
