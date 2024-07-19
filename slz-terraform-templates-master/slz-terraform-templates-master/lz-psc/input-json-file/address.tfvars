regional_address = [
  {
    project_id                    = "reference-host-prj"
    region                        = "us-central1"
    address_type                  = "EXTERNAL"
    address_name                  = "qa-host-nat-ip"
    address_description           = "Static External IP Address for NAT"
    network_tier                  = "PREMIUM"
    address_purpose               = null
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = null
    address_ip                    = null
  }
]

global_address = [
  {
    project_id                    = "reference-host-prj"
    global_address_type           = "INTERNAL"
    global_address_name           = "qa-host-psc-ip"
    global_address_description    = "Static Internal IP Address Range for Private Service Connection"
    global_address_purpose        = "VPC_PEERING"
    global_address_prefix_length  = 24
    global_address_network        = "qa-host-shared-vpc"
    global_address_ip             = "10.128.0.0"
  },
  {
    project_id                    = "reference-host-prj"
    global_address_type           = "EXTERNAL"
    global_address_name           = "qa-host-https-lb-ip"
    global_address_description    = "Static External IP Address for Global External HTTPS LB"
    global_address_purpose        = null
    global_address_prefix_length  = null
    global_address_network        = null
    global_address_ip             = null
  }
]