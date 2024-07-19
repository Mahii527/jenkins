#........................................ Global External HTTPS ALB - SSL Certificate ......................................#

module "sslcert" {
  for_each                              = {
    for k, v in try(var.sslcert,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-ssl-certificate"
  project_id                      = each.value.project_id
  certificate_type                = each.value.certificate_type
  ssl_certificate_name            = each.key
  ssl_certificate_description     = each.value.ssl_certificate_description
  private_key_path                = each.value.certificate_type == "custom" ? each.value.private_key_path : null
  certificate_path                = each.value.certificate_type == "custom" ? each.value.certificate_path : null
  domains                         = each.value.certificate_type == "managed" ? each.value.domains : null
  depends_on                      = [ module.address ]
}