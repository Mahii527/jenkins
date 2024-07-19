network_endpoint = {
    project                = "project_id"
    ip_address             = "google_compute_instance.endpoint-instance.network_interface[0].network_ip"
    network_endpoint_group = "google_compute_network_endpoint_group.neg.name"
    instance               = "google_compute_instance.endpoint-instance.name"
    port                   =  80
    zone                   = "us-central1-a"
}
   
