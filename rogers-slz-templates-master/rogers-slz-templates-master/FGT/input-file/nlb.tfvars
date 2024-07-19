nlb                                          = {
    "gcp-yyz-prd-sec-fgt-ilb-01-frontend-01" = {
        delete                           = false
        project_id                       = "gcp-prj-inf-networkhub-prd-1",
        region                           = "northamerica-northeast2",
        network                          = "gcp-vpc-prd-hub-shr-1"
        subnetwork                       = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01"
        load_balancing_scheme            = "INTERNAL",

        backend_type                     = "umig",
        backend_description              = "FGT ILB Backend Service",
        backend_name                     = "gcp-yyz-prd-sec-fgt-ilb-01",
        backend_protocol                 = null,
        backend_timeout_sec              = null,
        health_check_id                  = ["projects/gcp-prj-inf-networkhub-prd-1/regions/northamerica-northeast2/healthChecks/gcp-yyz-prd-sec-fgt-ilb-01-hc-01"]
        backend                          = [
            {
                group                    = "projects/gcp-prj-inf-networkhub-prd-1/zones/northamerica-northeast2-a/instanceGroups/gcp-yyz-prd-sec-fgt-umig-01"
            },
            {
                group                    = "projects/gcp-prj-inf-networkhub-prd-1/zones/northamerica-northeast2-b/instanceGroups/gcp-yyz-prd-sec-fgt-umig-02"
            }
        ],
        log_config                       = [
            {
                enable                   = true,
                sample_rate              = null
            }
        ]
        frontend_description             = "FGT ILB Frontend Service",
        ip_protocol                      = null,
        all_ports                        = true,
        port_range                       = null,
        ports                            = null,
        allow_global_access              = true
        labels                           = {
            "dataclass"                  = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
            "env"                        = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
            "appname"                    = "notset",                         # Example          - <application name>
            "appid"                      = "notset",                         # Example          - <Application: Number>
            "appowner"                   = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
            "costcenter"                 = "534-1101-7571",                  # Example          - <651.2245.0254>
            "canumber"                   = "23cb900457",                     # Example          - <21mb700467>
            "pii"                        = "true",                           # Values Supported - [true, false]
            "compliance"                 = "none",                           # Values Supported - [sox, pci, both, none]
            "sharedservices"             = "true",                           # Values Supported - [true, false]
            "triageticket"               = "notset",                         # Example          - <cloudops-4492>
            "businessunit"               = "inf",                            # Example          - [it, dig, ebu]
            "appclass"                   = "important"                       # Values Supported - [vital, critical, important, productivity]
            #"expirationdate"            = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
        },
    }
}
