resource "google_compute_network_endpoint" "my_endpoint"{
    project                 = var.project_id
    ip_address              = var.ip_address
    network_endpoint_group  = var.google_compute_network_endpoint_group_name
    instance                = var.instance
    port                    = var.port
    zone                    = var.zone
}


