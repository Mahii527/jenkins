#...................................... Compute Routes .....................................#

module "route" {
  for_each     = {
    for k, v in try(var.route,{}): k => v if v.delete != true
  }
  source                                 = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-compute-route"
  dest_range                             = each.value.dest_range
  name                                   = each.key
  network                                = each.value.network
  description                            = each.value.description
  priority                               = each.value.priority
  tags                                   = each.value.tags
  next_hop_gateway                       = each.value.next_hop_gateway
  next_hop_instance                      = each.value.next_hop_instance
  next_hop_ip                            = each.value.next_hop_ip
  next_hop_vpn_tunnel                    = each.value.next_hop_vpn_tunnel
  next_hop_ilb                           = each.value.next_hop_ilb
  project_id                             = each.value.project_id
  next_hop_instance_zone                 = each.value.next_hop_instance_zone
  depends_on                             = [ module.vpc ]
}