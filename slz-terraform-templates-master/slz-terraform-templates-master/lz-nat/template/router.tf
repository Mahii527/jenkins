#......................................... Cloud Router ......................................#

module "router" {
  for_each = {
      for k, v in var.router: k => v
      }
  source                                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-router"
  create_router                         = each.value.create_router 
  router_name                           = each.value.router_name 
  project_id                            = each.value.project_id 
  region                                = each.value.region 
  network                               = each.value.network
}