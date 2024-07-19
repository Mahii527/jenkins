#......................................... Cloud NAT .........................................#

module "nat" {
  for_each     = {
    for k, v in try(var.nat,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-nat"
  project_id                            = each.value.project_id 
  region                                = each.value.region
  nat_name                              = each.key
  router_name                           = each.value.router_name 
  nat_ip_allocate_option                = each.value.nat_ip_allocate_option
  nat_ips                               = each.value.nat_ip_allocate_option == "MANUAL_ONLY" ? (
                                          [module.regional_address["gcp-yyz-prd-inf-cnat-ip-01"].regional_address_details.self_link]
                                          ) : null
  source_subnetwork_ip_ranges_to_nat    = each.value.subnetwork_ranges
  subnetworks                           = each.value.subnetworks
  depends_on                            = [module.router]
}