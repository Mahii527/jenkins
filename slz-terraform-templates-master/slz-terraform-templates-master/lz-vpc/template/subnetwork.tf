#.....................................Host Project Subnet ....................................#

module "vpc_subnets" {
  for_each = {
      for k, v in var.subnets: k => v
      }
  source                                = "git::https://source.developers.google.com/p/peak-comfort-413811/r/github_terra-gcp_slz-terraform-modules//terraform-google-cloud-subnet"
  project_id                            = each.value.project_id
  network_name                          = each.value.network_name
  subnets                               = each.value.subnets
  secondary_ranges                      = each.value.secondary_ranges
  #purpose                               = each.value.purpose
  #role                                  = each.value.role
  depends_on                            = [ module.vpc ]
}