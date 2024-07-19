#............................................. External UDP NLB Backend .........................................#


module "target_pool" {
  for_each               = {
      for k, v in var.target_pool: k => v
  }
  source                 = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-instance"
  name                   = each.value.name
  project_id             = each.value.project_id
  zone                   = each.value.zone
  machine_type           = each.value.machine_type
  subnet                 = each.value.subnet
  deletion_protection    = each.value.deletion_protection
  image                  = each.value.image
  size                   = each.value.size
  tags                   = each.value.tags
  #hostname               = each.value.hostname
  service_account_email  = each.value.service_account_email
  service_account_scopes = each.value.service_account_scopes
  labels                 = each.value.labels
  metadata               = each.value.metadata
}