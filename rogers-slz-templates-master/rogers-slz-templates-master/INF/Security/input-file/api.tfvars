# ************************************** Level-7 Project API Configuration *********************************** #

apis = {

  # .............. INF Logging Project Configuration ............. #
  "gcp-prj-inf-logging-prd-1"  = {
    delete                     = false
    gcp_apis_list              = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "bigquerydatatransfer.googleapis.com",
      "bigquery.googleapis.com",
      "pubsub.googleapis.com"
    ]
  }
  # ........... End INF Logging Project Configuration ............ #
}