#.................................................... SSL Certificate ...................................................#

output "SSL_Certificate_Details" {
  value       = google_compute_ssl_certificate.default
  description = "Google Cloud SSL Certificate Details"
}
output "Managed_SSL_Certificate_Details" {
  value       = google_compute_managed_ssl_certificate.default
  description = "Google Cloud Managed SSL Certificate Details"
}