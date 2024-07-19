#................................... Repositories .....................................#

module "repo" {
  for_each = {
    for k, v in try(var.repo,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-repo"
  repo_name                       = each.key
  project_id                      = each.value.project_id
  depends_on                      = [ module.project ]
}