secret                                              = {
    "gcp-yyz-prd-sec-fgt-api-key-01"                = {
        delete                                      = false
        auto                                        = [
            {
                customer_managed_encryption         = []
            }
        ]
        #user_managed                               = null
        labels                                      = {
            "dataclass"                             = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
            "env"                                   = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
            "appname"                               = "notset",                         # Example          - <application name>
            "appid"                                 = "notset",                         # Example          - <Application: Number>
            "appowner"                              = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
            "costcenter"                            = "534-1101-7571",                  # Example          - <651.2245.0254>
            "canumber"                              = "23cb900457",                     # Example          - <21mb700467>
            "pii"                                   = "true",                           # Values Supported - [true, false]
            "compliance"                            = "none",                           # Values Supported - [sox, pci, both, none]
            "sharedservices"                        = "true",                           # Values Supported - [true, false]
            "triageticket"                          = "notset",                         # Example          - <cloudops-4492>
            "businessunit"                          = "inf",                            # Example          - [it, dig, ebu]
            "appclass"                              = "important"                       # Values Supported - [vital, critical, important, productivity]
            #"expirationdate"                       = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
        },
        annotations                                 = {}
        version_aliases                             = null
        topics                                      = []
        expire_time                                 = null
        ttl                                         = null
        rotation                                    = []
        project_id                                  = "gcp-prj-inf-networkhub-prd-1"

        enabled                                     = true
        deletion_policy                             = "DELETE"
        is_secret_data_base64                       = false
    }
}