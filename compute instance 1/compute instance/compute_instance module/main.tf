resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = var.tags
 
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
 
  network_interface {
  network = var.network
    access_config {
      // Include this if you want to give the VM a public IP
    }
  }
 
  metadata = var.metadata
 
}