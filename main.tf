terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
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
  credentials = ${{ secrets.GOOGLE_CREDENTIALS }}
}
