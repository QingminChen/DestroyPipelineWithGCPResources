provider "google" {
  project = "dataprod-cluster-testing-1"
  region  = "us-central1"
  zone    = "us-central1-f"
  credentials = file("dataprod-cluster-testing-1-7444c4c90649.json")
}

data "google_composer_image_versions" "all" {
}

resource "google_storage_bucket" "create-source-code-bucket" {
  name = "integrate-source-code-small-for-testing"
  location = "us-central1"
  project = "dataprod-cluster-testing-1"
  storage_class = "STANDARD"
  bucket_policy_only = true
  force_destroy = true
}

