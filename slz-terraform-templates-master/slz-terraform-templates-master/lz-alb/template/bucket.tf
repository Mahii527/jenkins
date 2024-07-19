#........................................ Global External HTTPS ALB Backend - Bucket .......................................#

module "bucket" {
  for_each                        = {
      for k, v in var.bucket: k => v
  }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-bucket"
  bucket_name                     = each.value.bucket_name
  project_id                      = each.value.project_id
  gcs_location                    = each.value.gcs_location
  force_destroy                   = each.value.force_destroy
  storage_class                   = each.value.storage_class
  labels                          = each.value.labels
  uniform_bucket_level_access     = each.value.uniform_bucket_level_access
  public_access_prevention        = each.value.public_access_prevention
  enable_versioning               = each.value.enable_versioning
  custom_placement_config         = each.value.custom_placement_config
}