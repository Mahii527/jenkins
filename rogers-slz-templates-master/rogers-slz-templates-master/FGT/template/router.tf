#......................................... Cloud Router ......................................#

module "router" {
  for_each                              = {
    for k, v in try(var.router,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-router" 
  router_name                           = each.key 
  project_id                            = each.value.project_id 
  region                                = each.value.region 
  network                               = each.value.network
  depends_on                            = [ module.regional_address ]
}