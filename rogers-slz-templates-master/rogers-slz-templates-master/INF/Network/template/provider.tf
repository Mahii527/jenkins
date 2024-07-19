#..................................... Provider Block ......................................#

provider "google" {
    project         = var.project_id
    access_token    = var.access_token
}
provider "google-beta" {
    project         = var.project_id
    access_token    = var.access_token
}

terraform {
  required_providers {
    google    = {
      version = "5.19.0"
    }
    google-beta = {
      version = "5.19.0"
    }
  }
}