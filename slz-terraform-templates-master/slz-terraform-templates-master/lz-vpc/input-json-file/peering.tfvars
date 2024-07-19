vpc_peering = [
  {
    prefix                        = "peering"
    local_network                 = "https://www.googleapis.com/compute/v1/projects/peak-comfort-413811/global/networks/qa-host-shared-vpc"
    peer_network                  = "https://www.googleapis.com/compute/v1/projects/peak-comfort-413811/global/networks/qa-host-shared-vpc2"
    export_local_custom_routes    = false
    export_peer_custom_routes     = false
  }
]