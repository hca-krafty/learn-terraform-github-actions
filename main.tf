terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
    random = {
      source  = "hashicorp/random"
    }
  }
  required_version = ">= 0.14"

  backend "remote" {
    organization = "hcaghk"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "google" {
  project = "hca-test-321221"
  region = "us-central1"
  zone = "us-central1-c"
}
