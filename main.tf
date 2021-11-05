terraform {
  required_providers {
    aws = {
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
}

resource "google_compute_network" "tf_vcp_net1" {
  name = "tf-vpc-net-1"
  routing_mode = "global"
  auto_create_subnets = false
}
