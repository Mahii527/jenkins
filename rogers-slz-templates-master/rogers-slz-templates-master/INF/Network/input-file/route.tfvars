route                                           = {
  "gcp-vpc-prd-hub-shr-1-rt-fgtilb-internet-01" = {
    delete                                      = false
    dest_range                                  = "0.0.0.0/0"
    network                                     = "gcp-vpc-prd-hub-shr-1"
    description                                 = "Route towards internet from fgt ilb"
    priority                                    = "1000"
    tags                                        = []
    next_hop_gateway                            = null
    next_hop_instance                           = null
    next_hop_ip                                 = null
    next_hop_vpn_tunnel                         = null
    next_hop_ilb                                = "10.23.225.140" # "projects/gcp-prj-inf-networkhub-prd-1/regions/northamerica-northeast2/forwardingRules/gcp-yyz-prd-sec-fgt-ilb-01-frontend-01"
    project_id                                  = "gcp-prj-inf-networkhub-prd-1"
    next_hop_instance_zone                      = null
  },
  "gcp-vpc-prd-out-fw-1-rt-igw-01" = {
    delete                                      = false
    dest_range                                  = "0.0.0.0/0"
    network                                     = "gcp-vpc-prd-out-fw-1"
    description                                 = "Route towards internet from Cloud NAT hosted on OUT VPC"
    priority                                    = "1000"
    tags                                        = []
    next_hop_gateway                            = "default-internet-gateway"
    next_hop_instance                           = null
    next_hop_ip                                 = null
    next_hop_vpn_tunnel                         = null
    next_hop_ilb                                = null
    project_id                                  = "gcp-prj-inf-networkhub-prd-1"
    next_hop_instance_zone                      = null
  }
}