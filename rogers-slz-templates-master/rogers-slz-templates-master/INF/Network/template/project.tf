#....................................... Project Config .....................................#

module "project" {
  for_each     = {
    for k, v in try(var.projects,{}): k => v if v.delete != true
  }
  source                         = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-project"
  billing_account_name           = each.value.billing_account_name 
  project_name                   = each.value.project_name
  project_id                     = each.key
  folder_id                      = each.value.folder_id
  auto_create_network            = each.value.auto_create_network
  labels                         = each.value.labels
}