#...................................... Global Address .......................................#

module "global_address" {
  for_each                              = {
    for k, v in try(var.global_address,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-global-address"
  project_id                            = each.value.project_id
  global_address_type                   = each.value.global_address_type
  global_address_name                   = each.key
  global_address_description            = each.value.global_address_description
  global_address_purpose                = each.value.global_address_purpose
  global_address_prefix_length          = each.value.global_address_prefix_length
  global_address_network                = each.value.global_address_network
  global_address_ip                     = each.value.global_address_ip
  depends_on                            = [ module.apis ]
}