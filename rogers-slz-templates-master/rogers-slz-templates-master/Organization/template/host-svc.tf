#...................................... Host Project .......................................#

module "host_project" {
  for_each = {
    for k, v in try(var.host_project,{}): k => v if v.delete != true
  }
  source                            = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-host-project"
  host_project_id                   = each.key
}

#................................... Service Project .......................................#

module "service_project" {
  for_each = {
    for k, v in try(var.service_project,{}): k => v if v.delete != true
  }
  source                            = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-service-project"
  host_project_id                   = each.value.host_project_id
  service_project_id                = each.key
  depends_on                        = [ module.host_project ]
}