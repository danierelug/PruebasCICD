provider "google" {
  project     = "My First Project"
  region      = "us-central1"
  credentials = bucket-states123/smart-radio-435114-m1-e70024a1f690.json
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
