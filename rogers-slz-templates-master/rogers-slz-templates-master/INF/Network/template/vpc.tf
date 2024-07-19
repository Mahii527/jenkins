#...................................... Host Project VPC .....................................#

module "vpc" {
  for_each     = {
    for k, v in try(var.vpc,{}): k => v if v.delete != true
  }
  source                                 = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-vpc?ref=master"
  network_name                           = each.key
  description                            = each.value.description
  auto_create_subnetworks                = each.value.auto_create_subnetworks
  routing_mode                           = each.value.routing_mode
  project_id                             = each.value.project_id
  delete_default_internet_gateway_routes = each.value.delete_routes
  depends_on                             = [ module.project ]
}