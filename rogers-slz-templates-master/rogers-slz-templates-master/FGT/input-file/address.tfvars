regional_address = {
  "gcp-yyz-fgt-out-priv-ip-01" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static Untrust Internal IP Address for FGT Firewall for Node 1"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-out-fw-1-yyz-inf-pub-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "100.64.224.2"
  },
  "gcp-yyz-fgt-out-priv-ip-02" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static Untrust Internal IP Address for FGT Firewall for Node 2"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-out-fw-1-yyz-inf-pub-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "100.64.224.3"
  },


  "gcp-yyz-fgt-int-priv-ip-01" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static Trust/Internal IP Address for FGT Firewall for Node 1"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "10.23.225.130"
  },
  "gcp-yyz-fgt-int-priv-ip-02" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static Trust/Internal IP Address for FGT Firewall for Node 2"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "10.23.225.131"
  },

  "gcp-yyz-fgt-ilb-priv-ip-01" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static Trust/Internal IP Address for FGT Firewall lb"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "10.23.225.140"
  },


  "gcp-yyz-fgt-ha-priv-ip-01" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static HA Internal IP Address for FGT Firewall for Node 1"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-ha-fw-1-yyz-inf-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "100.64.224.34"
  },
  "gcp-yyz-fgt-ha-priv-ip-02" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static HA Internal IP Address for FGT Firewall for Node 2"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-ha-fw-1-yyz-inf-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "100.64.224.35"
  },


  "gcp-yyz-fgt-mgmt-priv-ip-01" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static External IP Address for MGMT"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-mgmt-fw-1-yyz-inf-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "10.23.224.2"
  },
  "gcp-yyz-fgt-mgmt-priv-ip-02" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "INTERNAL"
    address_description           = "Static External IP Address for MGMT"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "gcp-vpc-prd-mgmt-fw-1-yyz-inf-prv-tier-01"
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = "10.23.224.3"
  },
  

  "gcp-yyz-prd-inf-cnat-ip-01" = {
    delete                        = false
    project_id                    = "gcp-prj-inf-networkhub-prd-1"
    region                        = "northamerica-northeast2"
    address_type                  = "EXTERNAL"
    address_description           = "Static External IP Address for NAT"
    network_tier                  = "PREMIUM"
    address_purpose               = null
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = null
    labels                        = {
      "dataclass"                 = "confidential",                   # Values Supported - [restricted, confidential, internal, public]
      "env"                       = "prd",                            # Values Supported - [uat, pre-prd, prd, dev, qa, stg, sandbox, poc, shared-services]
      "appname"                   = "notset",                         # Example          - <application name>
      "appid"                     = "notset",                         # Example          - <Application: Number>
      "appowner"                  = "varinder_singh",                 # Example          - <FirstName.LastName@rci.rogers.ca>
      "costcenter"                = "534-1101-7571",                  # Example          - <651.2245.0254>
      "canumber"                  = "23cb900457",                     # Example          - <21mb700467>
      "pii"                       = "true",                           # Values Supported - [true, false]
      "compliance"                = "none",                           # Values Supported - [sox, pci, both, none]
      "sharedservices"            = "true",                           # Values Supported - [true, false]
      "triageticket"              = "notset",                         # Example          - <cloudops-4492>
      "businessunit"              = "inf",                            # Example          - [it, dig, ebu]
      "appclass"                  = "important"                       # Values Supported - [vital, critical, important, productivity]
      #"expirationdate"           = "",                               # Example          - <Expiration Date in UTC 2016-06-15T00:0> - Only for POC
    },
    address_ip                    = null
  }
}