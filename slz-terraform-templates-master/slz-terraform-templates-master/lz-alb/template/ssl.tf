#........................................ Global External HTTPS ALB - SSL Certificate ......................................#

module "ssl" {
  for_each                        = {
      for k, v in var.ssl: k => v
  }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-ssl-certificate"
  project_id                      = each.value.project_id
  certificate_type                = each.value.certificate_type
  ssl_certificate_name            = each.value.ssl_certificate_name
  ssl_certificate_description     = each.value.ssl_certificate_description
  private_key_path                = each.value.private_key_path
  certificate_path                = each.value.certificate_path
  domains                         = each.value.domains
  depends_on                      = [ module.bucket ]
}