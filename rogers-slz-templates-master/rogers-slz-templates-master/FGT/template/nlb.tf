#...................................... Internal Load Balancer ......................................#

module "nlb" {
  for_each                               = {
    for k, v in try(var.nlb,{}): k => v if v.delete != true
  }
  source                                 = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-nlb"
  project_id                             = each.value.project_id
  region                                 = each.value.region
  network                                = each.value.network
  subnetwork                             = each.value.subnetwork
  load_balancing_scheme                  = each.value.load_balancing_scheme

  backend_type                           = each.value.backend_type
  target_pool_name                       = null
  target_pool_description                = null
  instances                              = null
  health_check_self_link                 = null
  
  backend_description                    = each.value.backend_description
  backend_name                           = each.value.backend_name
  backend_protocol                       = each.value.backend_protocol
  backend_timeout_sec                    = each.value.backend_timeout_sec
  health_check_id                        = each.value.health_check_id 
  backend                                = each.value.backend
  log_config                             = each.value.log_config

  frontend_description                   = each.value.frontend_description
  frontend_name                          = each.key
  ip_protocol                            = each.value.ip_protocol
  all_ports                              = each.value.all_ports
  ip_address                             = data.google_compute_address.ilb_ip.id
  port_range                             = each.value.port_range
  ports                                  = each.value.ports
  allow_global_access                    = each.value.allow_global_access
  labels                                 = each.value.labels
  depends_on                             = [ module.umig ]
}