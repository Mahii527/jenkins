#..................................... Billing Budget Quota ......................................#

module "billing_budget" {
  for_each = {
    for k, v in try(var.billing_budget,{}): k => v if v.delete != true
  }
  source                            = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-budget"
  budget_name                       = each.key 
  billing_account_id                = each.value.billing_account_id
  project_id                        = each.value.project_id
  credit_types_treatment            = each.value.credit_types_treatment
  currency_code                     = each.value.currency_code
  budget_amount                     = each.value.budget_amount
  threshold_values                  = each.value.threshold_values
  budget_notify_name                = each.value.budget_notify_name
  email_address                     = each.value.email_address
  depends_on                        = [ module.project ]
}