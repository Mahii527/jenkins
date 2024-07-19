#...................................... Regional Address .....................................#

module "regional_address" {
  for_each = {
      for k, v in var.regional_address: k => v
  }
  source                                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-regional-address"
  project_id                            = each.value.project_id
  region                                = each.value.region
  address_type                          = each.value.address_type
  address_purpose                       = each.value.address_purpose
  address_name                          = each.value.address_name
  address_description                   = each.value.address_description
  network_tier                          = each.value.network_tier
  address_prefix_length                 = each.value.address_prefix_length
  address_network                       = each.value.address_network
  address_subnetwork                    = each.value.address_subnetwork
  address_ip                            = each.value.address_ip
}

#...................................... Global Address .......................................#

module "global_address" {
  for_each = {
      for k, v in var.global_address: k => v
  }
  source                                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-global-address"
  project_id                            = each.value.project_id
  global_address_type                   = each.value.global_address_type
  global_address_name                   = each.value.global_address_name
  global_address_description            = each.value.global_address_description
  global_address_purpose                = each.value.global_address_purpose
  global_address_prefix_length          = each.value.global_address_prefix_length
  global_address_network                = each.value.global_address_network
  global_address_ip                     = each.value.global_address_ip
}