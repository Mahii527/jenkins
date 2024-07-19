#.................................... 1-to-2 VPC Peering .....................................#

module "vpc_peering_1_2" {
    for_each = {
      for k, v in var.vpc_peering: k => v
    }
    source                                = "git::https://source.developers.google.com/p/peak-comfort-413811/r/github_terra-gcp_slz-terraform-modules//terraform-google-cloud-vpc-peering"
    prefix                                = each.value.prefix
    local_network                         = each.value.local_network
    peer_network                          = each.value.peer_network
    export_local_custom_routes            = each.value.export_local_custom_routes 
    export_peer_custom_routes             = each.value.export_peer_custom_routes
    depends_on                            = [module.vpc]
}

#.................................... 2-to-1 VPC Peering .....................................#

module "vpc_peering_2_1" {
    for_each = {
      for k, v in var.vpc_peering: k => v
    }
    source                                = "git::https://source.developers.google.com/p/peak-comfort-413811/r/github_terra-gcp_slz-terraform-modules//terraform-google-cloud-vpc-peering"
    prefix                                = each.value.prefix
    local_network                         = each.value.peer_network
    peer_network                          = each.value.local_network
    export_local_custom_routes            = each.value.export_local_custom_routes 
    export_peer_custom_routes             = each.value.export_peer_custom_routes
    depends_on                            = [module.vpc_peering_1_2]
}