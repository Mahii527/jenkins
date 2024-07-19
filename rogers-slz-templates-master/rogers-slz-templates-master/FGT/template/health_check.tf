#........................................ External UDP NLB - Health Check .......................................#

module "health_check" {
  for_each                               = {
    for k, v in try(var.health_check,{}): k => v if v.delete != true
  }
  source                                 = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-health-check"
  health_check_type                      = each.value.health_check_type
  project_id                             = each.value.project_id
  region                                 = each.value.region
  health_check_name                      = each.key
  health_check_description               = each.value.health_check_description
  check_interval_sec                     = each.value.check_interval_sec
  timeout_sec                            = each.value.timeout_sec 
  healthy_threshold                      = each.value.healthy_threshold
  unhealthy_threshold                    = each.value.unhealthy_threshold
  health_check_port                      = null
  http_health_check                      = each.value.http_health_check
  tcp_health_check                       = each.value.tcp_health_check
  depends_on                             = [ module.vm ]
}