#........................................ Organisation Policy ..........................................#

module "org_policy" {
  for_each = {
      for k, v in var.org_policy: k => v
      }
  source           = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-org-policy"
  policy           = each.value.policy
  organization_id  = each.value.organization_id
  constraint       = each.value.constraint
  allow            = each.value.allow
}

#.......................................... Folder Policy ..............................................#

module "folder_policy" {
  for_each = {
      for k, v in var.folder_policy: k => v
      }
  source                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-folder-policy"
  policy                = each.value.policy
  folder_id             = each.value.folder_id
  constraint            = each.value.constraint
  allow                 = each.value.allow
}

#.......................................... Project Policy .............................................#

module "project_policy" {
  for_each = {
      for k, v in var.project_policy: k => v
      }
  source                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-project-policy"
  policy                = each.value.policy
  project_id            = each.value.project_id
  constraint            = each.value.constraint
  default               = each.value.default
}