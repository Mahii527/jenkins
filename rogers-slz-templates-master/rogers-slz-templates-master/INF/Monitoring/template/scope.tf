#................................... Project API Services ...................................#

module "scope" {
  for_each = {
    for k, v in try(var.scope,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-monitored-project"
  monitored_project               = each.value.monitored_project
  monitoring_project              = each.key
  depends_on                      = [ module.apis ]
}