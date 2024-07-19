#........................................ TF Bucket .......................................#

module "bucket" {
  for_each = {
    for k, v in try(var.bucket,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-bucket"
  bucket_name                     = each.key
  project_id                      = each.value.project_id
  gcs_location                    = each.value.gcs_location
  force_destroy                   = each.value.force_destroy
  storage_class                   = each.value.storage_class
  labels                          = each.value.labels
  uniform_bucket_level_access     = each.value.uniform_bucket_level_access
  public_access_prevention        = each.value.public_access_prevention
  enable_versioning               = each.value.enable_versioning
  custom_placement_config         = each.value.custom_placement_config
  lifecycle_rule                  = each.value.lifecycle_rule
  depends_on                      = [ module.apis ]
}