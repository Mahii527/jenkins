#....................................... Global External HTTPS ALB - Frontend & Backend ....................................#

module "alb" {
  for_each                        = {
    for k, v in try(var.alb,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-alb"
  project_id                      = each.value.project_id
  target_proxy_type               = each.value.target_proxy_type
  proxy_name                      = each.value.proxy_name
  proxy_description               = each.value.proxy_description
  load_balancing_scheme           = each.value.load_balancing_scheme
  backend_type                    = each.value.backend_type
  enable_cdn                      = each.value.enable_cdn
  security_policy                 = module.armor[""].security_policy_id
  
  url_map_name                    = each.value.url_map_name
  url_map_description             = each.value.url_map_description
  ssl_certificates_id             = each.value.target_proxy_type == "https" ? (
                                    module.sslcert[""].certificate_type == "managed" ? (
                                    [module.sslcert[""].Managed_SSL_Certificate_Details[0].self_link]) : (
                                    [module.sslcert[""].SSL_Certificate_Details[0].self_link])) : null

  backend_service_name            = each.value.backend_service_name
  backend_service_description     = each.value.backend_service_description
  health_check_id                 = each.value.health_check_id
  backend_service_protocol        = each.value.backend_service_protocol
  backend_service_timeout_sec     = each.value.backend_service_timeout_sec
  mig_group                       = each.value.mig_group
  balancing_mode                  = each.value.balancing_mode

  backend_bucket_name             = each.value.backend_type == "bucket" ? each.value.backend_bucket_name : null
  backend_bucket_description      = each.value.backend_type == "bucket" ? each.value.backend_bucket_description : null
  bucket_name                     = each.value.backend_type == "bucket" ? module.bucket[""].google_bucket_details.name : null

  frontend_description            = each.value.frontend_description
  frontend_name                   = each.key
  ip_protocol                     = each.value.ip_protocol
  port_range                      = each.value.port_range
  ip_address                      = module.address[""].global_address_details.id
  depends_on                      = [ module.neg ]
}