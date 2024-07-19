/******************************************
  Google Cloud Billing Budget Quota
 *****************************************/
resource "google_billing_budget" "budget" {
  billing_account           = var.billing_account_id
  display_name              = var.budget_name
  budget_filter {
    projects                = var.project_id
    credit_types_treatment  = var.credit_types_treatment
  }
  amount {
    specified_amount {
      currency_code         = var.currency_code
      units                 = var.budget_amount
    }
  }

  dynamic "threshold_rules" {
    for_each                = toset(var.threshold_values)
    content {
      threshold_percent     = threshold_rules.value
    }
  }
  all_updates_rule {
    monitoring_notification_channels = [google_monitoring_notification_channel.budget_notify.id,]
    disable_default_iam_recipients = true
  }
}

resource "google_monitoring_notification_channel" "budget_notify" {
    display_name            = var.budget_notify_name
    type                    = "email"
    labels                  = {
        email_address       = var.email_address
    }
}