output "instance_name" {
  description = "The name of the VM instance"
value = google_compute_instance.default.name
}
 
output "instance_self_link" {
  description = "The self-link of the VM instance"
  value       = google_compute_instance.default.self_link
}
 
output "instance_public_ip" {
  description = "The public IP address of the VM instance"
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}