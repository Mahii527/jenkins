#...................................... Project IAM .....................................#

module "project_iam" {
  for_each              = {
      for k, v in var.project_iam: k => v
  }
  source                = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-project-iam"
  project_id            = each.value.project_id
  roles                 = each.value.roles
  members               = each.value.members
}