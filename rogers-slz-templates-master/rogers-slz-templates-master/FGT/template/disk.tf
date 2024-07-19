module "disk" {
  for_each     = {
    for k, v in try(var.disk,{}): k => v if v.delete != true
  }
  source                                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-compute-disk"
  disk_name                             = each.key
  project_id                            = each.value.project_id
  labels                                = each.value.labels
  size                                  = each.value.size
  description                           = each.value.description 
  type                                  = each.value.type
  zone                                  = each.value.zone
  image                                 = each.value.image
  physical_block_size_bytes             = each.value.physical_block_size_bytes
  depends_on                            = [ module.nat ]
}