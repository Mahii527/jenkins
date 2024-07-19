#...................................... Host Project Firewall .....................................#

module "vpc_firewall_rule" {
  for_each     = {
    for k, v in try(var.firewall,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-firewall"
  project_id                            = each.value.project_id 
  network_name                          = each.key
  rules                                 = each.value.rules
  depends_on                            = [ module.vpc_subnets ]
}