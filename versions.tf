terraform {
  required_version = ">= 1.0.1"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.47.0"
    }
  }
}
