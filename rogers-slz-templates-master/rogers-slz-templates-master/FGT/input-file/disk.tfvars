disk                                = {
  "prdyzsecfgtvm01-log-disk01"       = {
    delete                          = false
    project_id                      = "gcp-prj-inf-networkhub-prd-1"
    labels                          = {
      "dataclass"                   = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                         = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                     = "notset",                         # Example          - <application name>
      "appid"                       = "notset",                         # Example          - <Application: Number>
      "appowner"                    = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                  = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                    = "23cb900457",                     # Example          - <21mb700467>
      "pii"                         = "true",                           # Values Supported - [true, false]
      "compliance"                  = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"              = "true",                           # Values Supported - [true, false]
      "triageticket"                = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                    = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"             = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    size                            = 30
    description                     = "Fortigate Firewall Appliance 1 log disk"
    type                            = "pd-ssd"
    zone                            = "northamerica-northeast2-a"
    image                           = null
    physical_block_size_bytes       = 4096
  },
  "prdyzsecfgtvm02-log-disk01"      = {
    delete                          = false
    project_id                      = "gcp-prj-inf-networkhub-prd-1"
    labels                          = {
      "dataclass"                   = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                         = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                     = "notset",                         # Example          - <application name>
      "appid"                       = "notset",                         # Example          - <Application: Number>
      "appowner"                    = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                  = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                    = "23cb900457",                     # Example          - <21mb700467>
      "pii"                         = "true",                           # Values Supported - [true, false]
      "compliance"                  = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"              = "true",                           # Values Supported - [true, false]
      "triageticket"                = "notset",                         # Example          - <cloudops-4492>
      "businessunit"                = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                    = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"             = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    size                            = 30
    description                     = "Fortigate Firewall Appliance 2 log disk"
    type                            = "pd-ssd"
    zone                            = "northamerica-northeast2-b"
    image                           = null
    physical_block_size_bytes       = 4096
  }
}