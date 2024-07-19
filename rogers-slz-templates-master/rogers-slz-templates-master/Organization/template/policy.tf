#........................................ Organisation Policy ..........................................#

module "org_policy" {
  for_each = {
    for k, v in try(var.org_policy,{}): k => v if v.delete != true
  }
  source           = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-org-policy"
  org_id           = each.value.org_id
  constraint       = each.key
  version          = each.value.version
  boolean_policy   = each.value.boolean_policy
  list_policy      = each.value.list_policy
  restore_policy   = each.value.restore_policy
}

#.......................................... Folder Policy ..............................................#

module "folder_policy" {
  for_each = {
    for k, v in try(var.folder_policy,{}): k => v if v.delete != true
  }
  source           = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder-policy"
  folder_id        = each.value.folder_id
  constraint       = each.key
  version          = each.value.version
  boolean_policy   = each.value.boolean_policy
  list_policy      = each.value.list_policy
  restore_policy   = each.value.restore_policy
}

#.......................................... Project Policy .............................................#

module "project_policy" {
  for_each = {
    for k, v in try(var.project_policy,{}): k => v if v.delete != true
  }
  source           = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-project-policy"
  project_id       = each.value.project_id
  constraint       = each.key
  version          = each.value.version
  boolean_policy   = each.value.boolean_policy
  list_policy      = each.value.list_policy
  restore_policy   = each.value.restore_policy
}