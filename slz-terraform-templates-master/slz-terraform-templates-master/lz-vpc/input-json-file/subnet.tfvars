subnets = [
  {
    project_id                    = "peak-comfort-413811"
    network_name                  = "qa-host-shared-vpc"
    subnets                       = [
      {
        subnet_name               = "qa-sub-svc-mgmt"
        subnet_ip                 = "10.10.1.0/25"
        subnet_region             = "us-central1"
        subnet_private_access     = true
        subnet_flow_logs          = true
        subnet_flow_logs_interval = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling = 0.7
        subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
      {
        subnet_name               = "qa-sub-svc-gke-node"
        subnet_ip                 = "10.11.0.0/24"
        subnet_region             = "us-central1"
        subnet_private_access     = true
        subnet_flow_logs          = true
        subnet_flow_logs_interval = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling = 0.7
        subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
    ]

    secondary_ranges = {
      "qa-sub-svc-gke-node" = [
        {
          range_name       = "qa-sub-svc-gke-pods"
          ip_cidr_range    = "10.12.0.0/16"
        },
        {
          range_name       = "qa-sub-svc-gke-svc"
          ip_cidr_range    = "10.13.0.0/20"
        },
      ]
    }
  },
]
