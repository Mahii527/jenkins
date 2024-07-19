resource "google_monitoring_group" "basic" {
  display_name = var.display_name
  filter = var.filter
}