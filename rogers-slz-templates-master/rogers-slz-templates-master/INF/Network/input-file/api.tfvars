# ************************************** Level-7 Project API Configuration *********************************** #

apis = {

  # .............. INF Network Project Configuration ............. #
  "gcp-prj-inf-networkhub-prd-1"   = {
    delete                         = false
    gcp_apis_list                  = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "servicenetworking.googleapis.com",
      "dns.googleapis.com",
      "container.googleapis.com",
      "secretmanager.googleapis.com"
    ]
  },
  "gcp-prj-inf-networkspk-prd-1"   = {
    delete                         = false
    gcp_apis_list                  = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "servicenetworking.googleapis.com",
      "dns.googleapis.com",
      "container.googleapis.com"
    ]
  },
  "gcp-prj-inf-networkspk-dev-1"   = {
    delete                         = false
    gcp_apis_list                  = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "servicenetworking.googleapis.com",
      "dns.googleapis.com",
      "container.googleapis.com"
    ]
  },
  "gcp-prj-inf-networkspk-qa-1"   = {
    delete                         = false
    gcp_apis_list                  = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "servicenetworking.googleapis.com",
      "dns.googleapis.com",
      "container.googleapis.com"
    ]
  },
  "gcp-prj-inf-networkspk-stg-1"   = {
    delete                         = false
    gcp_apis_list                  = [
      "iam.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "monitoring.googleapis.com",
      "servicenetworking.googleapis.com",
      "dns.googleapis.com",
      "container.googleapis.com"
    ]
  }
  # ........... End INF Network Project Configuration ............ #
}