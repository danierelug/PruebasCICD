provider "google" {
  project     = "smart-radio-435114-m1"
  region      = "us-central1"
  credentials = file("smart-radio-435114-m1-e70024a1f690.json")
}

resource "google_cloud_run_v2_service" "default" {
  name     = "cloudrun-service"
  location = "us-central1"
  deletion_protection = false
  ingress = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }
}
