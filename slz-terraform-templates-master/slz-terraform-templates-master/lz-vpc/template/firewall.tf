#...................................... Host Project Firewall .....................................#

module "vpc_firewall_rule" {
  for_each = {
      for k, v in var.firewall: k => v
      }
  source                                = "git::https://source.developers.google.com/p/peak-comfort-413811/r/github_terra-gcp_slz-terraform-modules//terraform-google-cloud-firewall"
  project_id                            = each.value.project_id
  network_name                          = each.value.network_name 
  rules                                 = each.value.rules
  depends_on                            = [ module.vpc_subnets ]
}