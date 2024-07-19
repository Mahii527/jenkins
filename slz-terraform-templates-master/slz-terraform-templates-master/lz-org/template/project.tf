#....................................... Project Config .....................................#

module "project" {
  for_each = {
      for k, v in var.projects: k => v
      }
  source                         = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-project"
  billing_account_name           = each.value.billing_account_name 
  project_name                   = each.value.project_name 
  project_id                     = each.value.project_id
  folder_id                      = each.value.folder_id
  auto_create_network            = each.value.auto_create_network
}