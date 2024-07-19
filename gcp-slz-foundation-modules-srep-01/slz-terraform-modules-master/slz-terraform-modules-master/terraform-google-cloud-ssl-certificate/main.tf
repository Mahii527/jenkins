#...................................................... locals ..........................................................#

locals {
    project                     = var.project_id
    certificate_type            = var.certificate_type
    ssl_certificate_name        = var.ssl_certificate_name
    ssl_certificate_description = var.ssl_certificate_description
}

#.................................................... SSL Certificate ...................................................#

resource "google_compute_ssl_certificate" "default" {
    count                       = local.certificate_type == "custom" ? 1 : 0  
    project                     = local.project
    name                        = local.ssl_certificate_name
    description                 = local.ssl_certificate_description
    private_key                 = file("${var.private_key_path}")
    certificate                 = file("${var.certificate_path}")
}

resource "google_compute_managed_ssl_certificate" "default" {
    count                       = local.certificate_type == "managed" ? 1 : 0        
    project                     = local.project
    name                        = local.ssl_certificate_name
    description                 = local.ssl_certificate_description

    managed {
        domains                 = var.domains
    }
}