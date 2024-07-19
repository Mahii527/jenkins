#...................................... External UDP Network Load Balancer ......................................#

data "google_compute_address" "address" {
  name                                   = "qa-host-udp-nlb-ip"
  region                                 = "us-central1"
}

module "nlb" {
  for_each                               = {
    for k, v in var.nlb: k => v
  }
  source                                 = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-nlb"
  depends_on                             = [ module.health_check ]
  project_id                             = each.value.project_id
  region                                 = each.value.region
  backend_type                           = each.value.backend_type
  load_balancing_scheme                  = each.value.load_balancing_scheme
  target_pool_name                       = each.value.target_pool_name
  target_pool_description                = each.value.target_pool_description
  instances                              = each.value.instances
  health_check_self_link                 = module.health_check[0].Health_Check_Self_Link

  backend_description                    = each.value.backend_description
  backend_name                           = each.value.backend_name
  backend_protocol                       = each.value.backend_protocol
  backend_timeout_sec                    = each.value.backend_timeout_sec
  health_check_id                        = module.health_check[0].Region_Health_Check_ID
  mig_id                                 = null
  backend_balancing_mode                 = each.value.backend_balancing_mode
  backend_capacity_scaler                = each.value.backend_capacity_scaler

  frontend_description                   = each.value.frontend_description
  frontend_name                          = each.value.frontend_name
  ip_protocol                            = each.value.ip_protocol
  all_ports                              = each.value.all_ports
  ip_address                             = data.google_compute_address.address.id
  port_range                             = each.value.port_range
  ports                                  = each.value.ports
}