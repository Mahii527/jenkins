nat = [
    {
      create_nat                    = true
      project_id                    = "reference-host-prj"
      region                        = "us-central1"
      nat_name                      = "qa-host-cloud-nat"
      router_name                   = "qa-host-cloud-router"
      nat_ip_allocate_option        = "MANUAL_ONLY"
      create_router                 = true
      subnetwork_ranges             = "LIST_OF_SUBNETWORKS"
      subnetworks                   = [
        {
          name                      = "qa-sub-svc-mgmt"
          source_ip_ranges_to_nat   = ["ALL_IP_RANGES"]
          secondary_ip_range_names  = null
        },
        {
          name                      = "qa-sub-svc-gke-node"
          source_ip_ranges_to_nat   = ["ALL_IP_RANGES"]
          secondary_ip_range_names  = null
        },
        {
          name                      = "qa-sub-svc-mqtt"
          source_ip_ranges_to_nat   = ["ALL_IP_RANGES"]
          secondary_ip_range_names  = null
        }
      ]
    }
  ]