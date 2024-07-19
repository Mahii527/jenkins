#...................................... Regional Address .....................................#

module "regional_address" {
  for_each                              = {
    for k, v in try(var.regional_address,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-regional-address"
  project_id                            = each.value.project_id
  region                                = each.value.region
  address_type                          = each.value.address_type
  address_purpose                       = each.value.address_purpose
  address_name                          = each.key
  address_description                   = each.value.address_description
  network_tier                          = each.value.network_tier
  address_prefix_length                 = each.value.address_prefix_length
  address_network                       = each.value.address_network
  address_subnetwork                    = each.value.address_subnetwork
  labels                                = each.value.labels 
  address_ip                            = each.value.address_ip
}