#..................................... Folder Configuration .....................................#

module "folders" {
  for_each = {
      for k, v in var.folders: k => v
      }
  source       = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-folder"
  folder_name  = each.value.folder_name
  parent       = each.value.parent
}
