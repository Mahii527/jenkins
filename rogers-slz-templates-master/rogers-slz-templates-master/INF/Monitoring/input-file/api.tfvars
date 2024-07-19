# ************************************** Level-7 Project API Configuration *********************************** #

apis = {

  # .............. INF Monitoring Project Configuration ............. #
  "gcp-prj-inf-monitoring-prd-1" = {
    delete                        = false
    gcp_apis_list                 = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "bigquerydatatransfer.googleapis.com",
      "bigquery.googleapis.com",
    ]
  }
  # ........... End INF Monitoring Project Configuration ............ #
}