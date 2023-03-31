terraform {

  cloud {
    organization = "andregri"

    workspaces {
      name = "learn-terraform-gcp"
    }
  }
  
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.59.0"
    }
  }

  required_version = ">= 1.1.0"
}
