#....................................... Bigquery Dataset .....................................#

module "dataset" {
  for_each     = {
    for k, v in try(var.dataset,{}): k => v if v.delete != true
  }
  source                         = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-bigquery-dataset"
  project_id                     = each.value.project_id
  dataset_id                     = each.key 
  friendly_name                  = each.value.friendly_name
  description                    = each.value.description
  location                       = each.value.location
  labels                         = each.value.labels
  access                         = each.value.access
}