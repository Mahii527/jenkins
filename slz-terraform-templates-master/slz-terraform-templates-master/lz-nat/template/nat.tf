#......................................... Cloud NAT .........................................#

data "google_compute_address" "address" {
  name                                   = "qa-host-nat-ip"
  region                                 = "us-central1"
}

module "nat" {
  for_each = {
      for k, v in var.nat: k => v
      }
  depends_on                            = [module.router]
  source                                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-nat"
  create_nat                            = each.value.create_nat
  project_id                            = each.value.project_id 
  region                                = each.value.region
  nat_name                              = each.value.nat_name 
  router_name                           = each.value.router_name 
  nat_ip_allocate_option                = each.value.nat_ip_allocate_option
  nat_ips                               = [data.google_compute_address.address.self_link]
  source_subnetwork_ip_ranges_to_nat    = each.value.subnetwork_ranges
  subnetworks                           = each.value.subnetworks
}