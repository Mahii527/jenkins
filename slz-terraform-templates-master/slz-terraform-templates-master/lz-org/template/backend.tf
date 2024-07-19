#.................................... Terraform Backend ....................................#

terraform {
    backend "gcs" {
    bucket  = "lz-test-bucket"
    prefix  = "lz-org"
  }
}