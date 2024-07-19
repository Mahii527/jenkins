#.................................... Terraform Backend ....................................#

terraform {
    backend "gcs" {
    bucket  = "slz-tf-remote-backend"
    prefix  = "lz-vm"
  }
}