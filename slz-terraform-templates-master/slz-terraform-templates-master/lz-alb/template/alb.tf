#....................................... Global External HTTPS ALB - Frontend & Backend ....................................#

data "google_compute_global_address" "address" {
  name                            = "qa-host-https-lb-ip"
}

module "alb" {
  for_each                        = {
      for k, v in var.alb: k => v
  }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-alb"
  project_id                      = each.value.project_id
  target_proxy_type               = each.value.target_proxy_type
  proxy_name                      = each.value.proxy_name
  proxy_description               = each.value.proxy_description
  load_balancing_scheme           = each.value.load_balancing_scheme
  backend_type                    = each.value.backend_type
  enable_cdn                      = each.value.enable_cdn
  security_policy                 = module.armor[0].security_policy_id
  
  url_map_name                    = each.value.url_map_name
  url_map_description             = each.value.url_map_description
  ssl_certificates_id             = [module.ssl[0].Managed_SSL_Certificate_Details[0].self_link]

  backend_service_name            = each.value.backend_service_name
  backend_service_description     = each.value.backend_service_description
  health_check_id                 = each.value.health_check_id
  backend_service_protocol        = each.value.backend_service_protocol
  backend_service_timeout_sec     = each.value.backend_service_timeout_sec
  mig_group                       = each.value.mig_group
  balancing_mode                  = each.value.balancing_mode

  backend_bucket_name             = each.value.backend_bucket_name
  backend_bucket_description      = each.value.backend_bucket_description
  bucket_name                     = module.bucket[0].google_bucket_details.name

  frontend_description            = each.value.frontend_description
  frontend_name                   = each.value.frontend_name
  ip_protocol                     = each.value.ip_protocol
  port_range                      = each.value.port_range
  ip_address                      = data.google_compute_global_address.address.id
  depends_on                      = [ module.armor ]
}