#.................................... 1-to-2 VPC Peering .....................................#

module "vpc_peering_1_2" {
  for_each                              = {
    for k, v in try(var.vpc_peering,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-vpc-peering"
  prefix                                = each.key
  local_network                         = each.value.local_network
  peer_network                          = each.value.peer_network
  export_local_custom_routes            = each.value.export_local_custom_routes 
  export_peer_custom_routes             = each.value.export_peer_custom_routes
  depends_on                            = [module.vpc]
}

#.................................... 2-to-1 VPC Peering .....................................#

module "vpc_peering_2_1" {
  for_each                              = {
    for k, v in try(var.vpc_peering,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-vpc-peering"
  prefix                                = each.key
  local_network                         = each.value.peer_network
  peer_network                          = each.value.local_network
  export_local_custom_routes            = each.value.export_local_custom_routes 
  export_peer_custom_routes             = each.value.export_peer_custom_routes
  depends_on                            = [module.vpc_peering_1_2]
}