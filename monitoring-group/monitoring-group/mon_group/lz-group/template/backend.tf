terraform {
    backend "gcs" {
    bucket  = "test-2bucket"
    prefix  = "lz-group"
  }
}