scope                             = {
  "gcp-prj-inf-monitoring-prd-1"  = {
    delete                        = false
    monitored_project             = [
      "gcp-prj-inf-automation-prd-01",
      "gcp-prj-inf-billing-prd-01",
      "gcp-prj-inf-logging-prd-1",
      "gcp-prj-inf-networkhub-prd-1",
      "gcp-prj-inf-networkspk-dev-1",
      "gcp-prj-inf-networkspk-prd-1",
      "gcp-prj-inf-networkspk-qa-1",
      "gcp-prj-inf-networkspk-stg-1"
    ]
  }
}