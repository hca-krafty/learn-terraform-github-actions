terraform {
  backend "remote" {
    organization = "hcaghk"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
