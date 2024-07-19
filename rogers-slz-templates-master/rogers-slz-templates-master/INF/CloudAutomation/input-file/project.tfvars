# ********************************** Level-7 Project Configuration ********************************* #

projects                                    = {

# .............. INF Cloud Automation Project Configuration  ............. #
  "gcp-prj-inf-automation-prd-01"           = {
    delete                                  = false
    billing_account_name                    = "Billing Account for rci.rogers.com-1"
    project_name                            = "CloudAutomation"
    folder_id                               = "811312481972" # "INF-Platform-ID"
    auto_create_network                     = false
    labels                                  = {}
  }
# ........... End INF Cloud Automation Project Configuration  ............ #
}