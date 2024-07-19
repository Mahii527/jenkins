# ************************************** Level-7 Project API Configuration *********************************** #

apis = {

  # .............. INF Billing Project Configuration ............. #
  "gcp-prj-inf-billing-prd-01" = {
    delete                     = false
    gcp_apis_list              = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "bigquerydatatransfer.googleapis.com",
      "bigquery.googleapis.com",
      "cloudbilling.googleapis.com"
    ]
  }
  # ........... End INF Billing Project Configuration ............ #
}