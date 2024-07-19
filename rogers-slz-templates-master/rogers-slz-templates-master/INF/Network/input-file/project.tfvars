# ********************************** Level-7 Project Resources Configuration ********************************* #

projects                                    = {

# ................... Network HUB Project Configuration ................. #
  "gcp-prj-inf-networkhub-prd-1"           = {
    delete                                  = false
    billing_account_name                    = "Billing Account for rci.rogers.com-1"
    project_name                            = "NetworkHub"
    folder_id                               = "855623149010"                    # "INF-Network-ID"
    auto_create_network                     = false
    labels                                  = {
      "dataclass"                           = "internal",                       # Values Supported - [restricted, confidential, internal, public]
      "env"                                 = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                             = "notset",                         # Example          - <application name>
      "appid"                               = "notset",                         # Example          - <Application: Number>
      "appowner"                            = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                          = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                            = "23cb900457",                     # Example          - <21mb700467>
      "pii"                                 = "false",                          # Values Supported - [true, false]
      "compliance"                          = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"                      = "true",                           # Values Supported - [true, false]
      "triageticket"                        = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                        = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                            = "vital"                           # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"                     = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    }
  }
# ............... End Network HUB Project Configuration ................. #



# .............. Network Spoke Project Configuration - Prod ............. #
  "gcp-prj-inf-networkspk-prd-1"            = {
    delete                                  = false
    billing_account_name                    = "Billing Account for rci.rogers.com-1"
    project_name                            = "NetworkSpokeProd"
    folder_id                               = "855623149010"
    auto_create_network                     = false
    labels                                  = {
      "dataclass"                           = "internal",                       # Values Supported - [restricted, confidential, internal, public]
      "env"                                 = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                             = "notset",                         # Example          - <application name>
      "appid"                               = "notset",                         # Example          - <Application: Number>
      "appowner"                            = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                          = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                            = "23cb900457",                     # Example          - <21mb700467>
      "pii"                                 = "false",                          # Values Supported - [true, false]
      "compliance"                          = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"                      = "true",                           # Values Supported - [true, false]
      "triageticket"                        = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                        = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                            = "vital"                           # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"                     = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    }
  }
# .......... End Network Spoke Project Configuration - Prod ............. #



# .............. Network Spoke Project Configuration - Dev .............. #
  "gcp-prj-inf-networkspk-dev-1"            = {
    delete                                  = false
    billing_account_name                    = "Billing Account for rci.rogers.com-1"
    project_name                            = "NetworkSpokeDev"
    folder_id                               = "855623149010"                    # "INF-Network-ID"
    auto_create_network                     = false
    labels                                  = {
      "dataclass"                           = "internal",                       # Values Supported - [restricted, confidential, internal, public]
      "env"                                 = "dev",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                             = "notset",                         # Example          - <application name>
      "appid"                               = "notset",                         # Example          - <Application: Number>
      "appowner"                            = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                          = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                            = "23cb900457",                     # Example          - <21mb700467>
      "pii"                                 = "false",                          # Values Supported - [true, false]
      "compliance"                          = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"                      = "true",                           # Values Supported - [true, false]
      "triageticket"                        = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                        = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                            = "vital"                           # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"                     = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    }
  }
# ........... End Network Spoke Project Configuration - Dev ............. #



# ............... Network Spoke Project Configuration - QA .............. #
  "gcp-prj-inf-networkspk-qa-1"             = {
    delete                                  = false
    billing_account_name                    = "Billing Account for rci.rogers.com-1"
    project_name                            = "NetworkSpokeQA"
    folder_id                               = "855623149010"
    auto_create_network                     = false
    labels                                  = {
      "dataclass"                           = "internal",                       # Values Supported - [restricted, confidential, internal, public]
      "env"                                 = "qa",                             # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                             = "notset",                         # Example          - <application name>
      "appid"                               = "notset",                         # Example          - <Application: Number>
      "appowner"                            = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                          = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                            = "23cb900457",                     # Example          - <21mb700467>
      "pii"                                 = "false",                          # Values Supported - [true, false]
      "compliance"                          = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"                      = "true",                           # Values Supported - [true, false]
      "triageticket"                        = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                        = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                            = "vital"                           # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"                     = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    }
  }
# ............ End Network Spoke Project Configuration - QA ............. #



# ............... Network Spoke Project Configuration - STG ............. #
  "gcp-prj-inf-networkspk-stg-1"            = {
    delete                                  = false
    billing_account_name                    = "Billing Account for rci.rogers.com-1"
    project_name                            = "NetworkSpokeSTG"
    folder_id                               = "855623149010"
    auto_create_network                     = false
    labels                                  = {
      "dataclass"                           = "internal",                       # Values Supported - [restricted, confidential, internal, public]
      "env"                                 = "stg",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                             = "notset",                         # Example          - <application name>
      "appid"                               = "notset",                         # Example          - <Application: Number>
      "appowner"                            = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                          = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                            = "23cb900457",                     # Example          - <21mb700467>
      "pii"                                 = "false",                          # Values Supported - [true, false]
      "compliance"                          = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"                      = "true",                           # Values Supported - [true, false]
      "triageticket"                        = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                        = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                            = "vital"                           # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"                     = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    }
  }
# ............ End Network Spoke Project Configuration - STG ............ #
}