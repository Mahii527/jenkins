#...................................... Host Project .......................................#

module "host_project" {
  for_each                          = {
      for k, v in var.host_project: k => v
  }
  source                            = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-host-project"
  host_project_id                   = each.value.host_project_id
  shared_vpc                        = each.value.shared_vpc
}

#................................... Service Project .......................................#

module "service_project" {
  for_each                          = {
      for k, v in var.service_project: k => v
  }
  source                            = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-service-project"
  host_project_id                   = each.value.host_project_id
  service_project_id                = each.value.service_project_id
  depends_on                        = [ module.host_project ]
}