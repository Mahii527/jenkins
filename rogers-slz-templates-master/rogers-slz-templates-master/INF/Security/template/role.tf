#................................... Org Custom Role ...................................#

module "role" {
  for_each = {
    for k, v in try(var.role,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-project-custom-role"
  role_id                         = each.key
  project_id                      = each.value.project_id
  title                           = each.value.title
  permissions                     = each.value.permissions
  stage                           = each.value.stage
  description                     = each.value.description
  depends_on                      = [ module.project ]
}