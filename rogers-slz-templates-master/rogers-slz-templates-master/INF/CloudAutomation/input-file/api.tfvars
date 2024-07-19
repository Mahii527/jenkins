# ************************************** Level-7 Project API Configuration *********************************** #

apis = {

  # .............. INF Cloud Automation Project Configuration  ............. #
  "gcp-prj-inf-automation-prd-01" = {
    delete                     = false
    gcp_apis_list              = [
      "cloudresourcemanager.googleapis.com",
      "cloudbilling.googleapis.com",
      "billingbudgets.googleapis.com",
      "iam.googleapis.com",
      "pubsub.googleapis.com"
      #"serviceusage.googleapis.com",
      #"storage.googleapis.com",
      #"servicenetworking.googleapis.com",
      #"cloudidentity.googleapis.com",
      #"compute.googleapis.com",
      #"secretmanager.googleapis.com",
      #"securitycenter.googleapis.com",
      #"sourcerepo.googleapis.com"
    ]
    disable_apis_on_destroy    = false
    disable_dependent_apis     = false
  }
  # ........... End INF Cloud Automation Project Configuration  ............ #
}