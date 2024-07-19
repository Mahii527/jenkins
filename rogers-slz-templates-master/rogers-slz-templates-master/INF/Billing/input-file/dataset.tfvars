# ********************************** Level-7 Project Resources Configuration ********************************* #

dataset                                     = {

# .............. Big Query Dataset Configuration ............. #
  "gcp_yyz_prd_inf_bgqr_01"                 = {
    delete                                  = false
    project_id                              = "gcp-prj-inf-billing-prd-01"
    friendly_name                           = "billing-dataset-01"
    description                             = "Billing related exports from day-0 saved into multi-regional dataset"
    location                                = "US"
    labels                                  = {
      "dataclass"                           = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                                 = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                             = "notset",                         # Example          - <application name>
      "appid"                               = "notset",                         # Example          - <Application: Number>
      "appowner"                            = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                          = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                            = "23cb900457",                     # Example          - <21mb700467>
      "pii"                                 = "true",                           # Values Supported - [true, false]
      "compliance"                          = "sox",                            # Values Supported - [sox, pci, both, none]
      "sharedservices"                      = "true",                           # Values Supported - [true, false]
      "triageticket"                        = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                        = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                            = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"                     = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    }
    access                                  = [
      {
        role                                = "OWNER"
        group_by_email                      = null
        user_by_email                       = "ayush.shukla@rci.rogers.com"
        special_group                       = null
      },
      {
        role                                = "OWNER"
        group_by_email                      = null
        user_by_email                       = "jitendra.lodhi@rci.rogers.com"
        special_group                       = null
      },
      {
        role                                = "OWNER"
        group_by_email                      = null
        user_by_email                       = "amit.kumar8@rci.rogers.com"
        special_group                       = null
      },
      {
        role                                = "OWNER"
        group_by_email                      = null
        user_by_email                       = null
        special_group                       = "projectOwners"
      }
    ],
  }
# ......... End INF Big Query Dataset Configuration .......... #
}