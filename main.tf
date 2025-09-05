terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "google" {
  credentials = file ("terraform-practive-471123-ca992cbcde3a.json")
  project     = "terraform-practive-471123" 
  region      = "us-central1"
}
# ---------- Google Cloud Storage Bucket ----------
resource "google_storage_bucket" "my_bucket" {
  name     = "solojoe-terraform-bucket"
  location = "US"
# ---------- Compute Engine VM ----------
resource "google_compute_instance" "vm_instance" {
  name          = "solojoe-vm"
  machine_type  = "e2-micro"
  zone          = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
}