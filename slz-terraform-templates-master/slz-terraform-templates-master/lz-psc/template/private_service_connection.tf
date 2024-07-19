#...................................... Private Service Connection .....................................#

module "private_connection" {
  for_each = {
      for k, v in var.private_connection: k => v
  }
  depends_on                            = [module.global_address]
  source                                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-private-connection"
  network                               = each.value.network
  service                               = each.value.service
  ranges                                = each.value.ranges
}