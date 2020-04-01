#########GCP##########
provider "google" {
  credentials = "${file("/home/terrafrom07/.ssh/account.json")}"
  project     = "k8s-terraform-demo-272708"
  region      = "us-west1"
  zone        = "us-west1-c"
}

resource "google_service_account" "service_account" {
  account_id   = "test-svc-account007"
  display_name = "Test Service Account"
}

