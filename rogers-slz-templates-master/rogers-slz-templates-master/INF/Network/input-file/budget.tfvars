billing_budget = {
  "gcp-prj-inf-networkhub-prd-1-budget-01" = {
    delete                  = false
    billing_account_id      = "0169BA-63D6C3-3F9651"
    project_id              = ["projects/gcp-prj-inf-networkhub-prd-1"]
    credit_types_treatment  = "EXCLUDE_ALL_CREDITS"
    currency_code           = "USD"
    budget_amount           = 1000
    threshold_values        = [0.5, 0.75, 0.9,1]
    budget_notify_name      = "gcp-prj-inf-networkhub-prd-1-budget-01-notification-01"
    email_address           = "jitendra.lodhi@rci.rogers.com"
  },
  "gcp-prj-inf-networkspk-prd-1-budget-01" = {
    delete                  = false
    billing_account_id      = "0169BA-63D6C3-3F9651"
    project_id              = ["projects/gcp-prj-inf-networkspk-prd-1"]
    credit_types_treatment  = "EXCLUDE_ALL_CREDITS"
    currency_code           = "USD"
    budget_amount           = 1000
    threshold_values        = [0.5, 0.75, 0.9,1]
    budget_notify_name      = "gcp-prj-inf-networkspk-prd-1-budget-01-notification-01"
    email_address           = "jitendra.lodhi@rci.rogers.com"
  },
  "gcp-prj-inf-networkspk-dev-1-budget-01" = {
    delete                  = false
    billing_account_id      = "0169BA-63D6C3-3F9651"
    project_id              = ["projects/gcp-prj-inf-networkspk-dev-1"]
    credit_types_treatment  = "EXCLUDE_ALL_CREDITS"
    currency_code           = "USD"
    budget_amount           = 1000
    threshold_values        = [0.5, 0.75, 0.9,1]
    budget_notify_name      = "gcp-prj-inf-networkspk-dev-1-budget-01-notification-01"
    email_address           = "jitendra.lodhi@rci.rogers.com"
  },
  "gcp-prj-inf-networkspk-qa-1-budget-01" = {
    delete                  = false
    billing_account_id      = "0169BA-63D6C3-3F9651"
    project_id              = ["projects/gcp-prj-inf-networkspk-qa-1"]
    credit_types_treatment  = "EXCLUDE_ALL_CREDITS"
    currency_code           = "USD"
    budget_amount           = 1000
    threshold_values        = [0.5, 0.75, 0.9,1]
    budget_notify_name      = "gcp-prj-inf-networkspk-qa-1-budget-01-notification-01"
    email_address           = "jitendra.lodhi@rci.rogers.com"
  },
  "gcp-prj-inf-networkspk-stg-1-budget-01" = {
    delete                  = false
    billing_account_id      = "0169BA-63D6C3-3F9651"
    project_id              = ["projects/gcp-prj-inf-networkspk-stg-1"]
    credit_types_treatment  = "EXCLUDE_ALL_CREDITS"
    currency_code           = "USD"
    budget_amount           = 1000
    threshold_values        = [0.5, 0.75, 0.9,1]
    budget_notify_name      = "gcp-prj-inf-networkspk-stg-1-budget-01-notification-01"
    email_address           = "jitendra.lodhi@rci.rogers.com"
  }
}