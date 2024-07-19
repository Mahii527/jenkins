resource "google_compute_region_network_endpoint" "default" {
  region_network_endpoint_group = var.region_network_endpoint_group
  region                = var.region
  project               = var.project_id
  ip_address            = var.ip_address
  port                  = var.port
  fqdn                  = var.fqdn
}
 
 
/*  resource "google_compute_region_network_endpoint_group" "group" {
  name         = var.name
  network      = google_compute_network.default.id
 
  region         = var.region
  network_endpoint_type = var.network_endpoint_type
}
 
 resource "google_compute_network" "default" {
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnetworks
}   */