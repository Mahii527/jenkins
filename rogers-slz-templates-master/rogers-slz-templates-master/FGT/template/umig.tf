module "umig" {
  for_each                               = {
    for k, v in try(var.umig,{}): k => v if v.delete != true
  }
  source                                 = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-umig"
  project_id                             = each.value.project_id
  zone                                   = each.value.zone
  network                                = each.value.network
  
  umig_name                              = each.key
  umig_description                       = each.value.umig_description
  umig_instances                         = each.value.umig_instances
  named_port                             = each.value.named_port
  
  depends_on                             = [ module.health_check ]
}