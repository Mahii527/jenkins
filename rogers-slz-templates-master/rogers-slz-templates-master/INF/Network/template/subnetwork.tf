#.....................................Host Project Subnet ....................................#

module "vpc_subnets" {
  for_each     = {
    for k, v in try(var.subnets,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-subnet"
  project_id                            = each.value.project_id
  network_name                          = each.key
  subnets                               = each.value.subnets
  secondary_ranges                      = each.value.secondary_ranges
  #purpose                               = each.value.purpose
  #role                                  = each.value.role
  depends_on                            = [ module.vpc ]
}