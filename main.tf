locals {
  zone = "us-central1-c"
}

provider "google" {
  credentials = var.sa

  project = var.project_id
  region  = "us-central1"
  zone    = local.zone
}

resource "google_compute_network" "vpc_network" {
  name = "krateo-network"
}

resource "google_compute_instance" "default" {
  name         = "krateo-compute"
  machine_type = "e2-medium"
  zone         = local.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = google_compute_network.vpc_network.name

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}
