#................................... Project API Services ...................................#

module "apis" {
  for_each = {
      for k, v in var.apis: k => v
      }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-apis"
  project_id                      = each.value.project_id
  gcp_apis_list                   = each.value.gcp_apis_list
}