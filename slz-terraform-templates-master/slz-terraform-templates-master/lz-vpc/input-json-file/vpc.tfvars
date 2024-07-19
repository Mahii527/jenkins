vpc = [
  {
    network_name           = "qa-host-shared-vpc"
    description            = "Shared VPC"
    auto_create_subnetworks = false
    routing_mode           = "GLOBAL"
    project_id             = "peak-comfort-413811"
    delete_routes          = false
  },
  {
    network_name           = "qa-host-shared-vpc2"
    description            = "Shared VPC2"
    auto_create_subnetworks = false
    routing_mode           = "GLOBAL"
    project_id             = "peak-comfort-413811"
    delete_routes          = false
  }
]