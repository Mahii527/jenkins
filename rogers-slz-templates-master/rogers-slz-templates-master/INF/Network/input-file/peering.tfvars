vpc_peering                         = {

  # .................. VPC Peering between HUB and Spokes Configuration ................ #
  "gcp-peering-01"                  = {
    delete                          = false
    local_network                   = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkhub-prd-1/global/networks/gcp-vpc-prd-hub-shr-1"
    peer_network                    = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkspk-prd-1/global/networks/gcp-vpc-prd-shr-1"
    export_local_custom_routes      = true
    export_peer_custom_routes       = true
  },
  "gcp-peering-02"                  = {
    delete                          = false
    local_network                   = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkhub-prd-1/global/networks/gcp-vpc-prd-hub-shr-1"
    peer_network                    = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkspk-dev-1/global/networks/gcp-vpc-npe-dev-shr-1"
    export_local_custom_routes      = true
    export_peer_custom_routes       = true
  },
  "gcp-peering-03"                  = {
    delete                          = false
    local_network                   = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkhub-prd-1/global/networks/gcp-vpc-prd-hub-shr-1"
    peer_network                    = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkspk-qa-1/global/networks/gcp-vpc-npe-qa-shr-1"
    export_local_custom_routes      = true
    export_peer_custom_routes       = true
  },
  "gcp-peering-04"                  = {
    delete                          = false
    local_network                   = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkhub-prd-1/global/networks/gcp-vpc-prd-hub-shr-1"
    peer_network                    = "https://www.googleapis.com/compute/v1/projects/gcp-prj-inf-networkspk-stg-1/global/networks/gcp-vpc-npe-stg-shr-1"
    export_local_custom_routes      = true
    export_peer_custom_routes       = true
  },
  # .............. End VPC Peering between HUB and Spokes Configuration ................ #
}