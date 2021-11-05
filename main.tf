terraform {
  required_version = ">= 0.14"
  backend "remote" {
    organization = "hcaghk"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
