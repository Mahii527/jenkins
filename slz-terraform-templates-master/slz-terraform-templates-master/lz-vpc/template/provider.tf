#..................................... Provider Block ......................................#

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.10.0"
    }
  }
}
 
provider "google" {
  project = "my-project-44513-422004"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "json.json"
}