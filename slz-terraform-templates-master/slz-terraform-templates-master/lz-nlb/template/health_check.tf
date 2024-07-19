#........................................ External UDP NLB - Health Check .......................................#

module "health_check" {
  for_each                               = {
    for k, v in var.health_check: k => v
  }
  source                                 = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-health-check"
  health_check_type                      = each.value.health_check_type
  project_id                             = each.value.project_id
  region                                 = each.value.region
  health_check_name                      = each.value.health_check_name
  health_check_description               = each.value.health_check_description
  check_interval_sec                     = each.value.check_interval_sec
  timeout_sec                            = each.value.timeout_sec 
  healthy_threshold                      = each.value.healthy_threshold
  unhealthy_threshold                    = each.value.unhealthy_threshold
  health_check_port                      = each.value.health_check_port
  depends_on                             = [ module.target_pool ]
}