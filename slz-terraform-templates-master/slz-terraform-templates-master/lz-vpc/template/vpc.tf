#...................................... Host Project VPC .....................................#

module "vpc" {
  for_each = {
      for k, v in var.vpc: k => v
      }
  source                                 = "git::https://source.developers.google.com/p/peak-comfort-413811/r/github_terra-gcp_slz-terraform-modules//terraform-google-cloud-vpc?ref=master"
  network_name                           = each.value.network_name
  description                            = each.value.description
  auto_create_subnetworks                = each.value.auto_create_subnetworks
  routing_mode                           = each.value.routing_mode
  project_id                             = each.value.project_id
  delete_default_internet_gateway_routes = each.value.delete_routes
}