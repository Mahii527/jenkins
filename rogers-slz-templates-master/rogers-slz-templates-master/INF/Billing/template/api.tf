#................................... Project API Services ...................................#

module "apis" {
  for_each = {
    for k, v in try(var.apis,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-apis"
  project_id                      = each.key
  gcp_apis_list                   = each.value.gcp_apis_list
  depends_on                      = [ module.project ]
}