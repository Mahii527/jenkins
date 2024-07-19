#........................................ Global External HTTPS ALB - Cloud Armor ..........................................#

module "armor" {
  for_each                        = {
      for k, v in var.armor: k => v
  }
  source                          = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-cloud-armor-v2"
  security_policy_name            = each.value.security_policy_name
  project_id                      = each.value.project_id
  security_policy_type            = each.value.security_policy_type
  security_policy_description     = each.value.security_policy_description
  #security_policy_log_level       = each.value.security_policy_log_level
  #security_policy_json_parsing    = each.value.security_policy_json_parsing
  security_policy_default_rules   = each.value.security_policy_default_rules
  security_policy_throttle_rules  = each.value.security_policy_throttle_rules
  security_policy_countries_rules = each.value.security_policy_countries_rules
  security_policy_owasp_rules     = each.value.security_policy_owasp_rules
  security_policy_cves_and_vulnerabilities_rules  = each.value.security_policy_cves_and_vulnerabilities_rules
  depends_on                      = [ module.ssl ]
}