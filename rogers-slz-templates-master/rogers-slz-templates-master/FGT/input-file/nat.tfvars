nat                                 = {
  "gcp-yyz-prd-inf-cnat-01"         = {
    delete                          = false
    project_id                      = "gcp-prj-inf-networkhub-prd-1"
      region                        = "northamerica-northeast2"
      router_name                   = "gcp-yyz-prd-inf-crtr-01"
      nat_ip_allocate_option        = "MANUAL_ONLY"
      subnetwork_ranges             = "LIST_OF_SUBNETWORKS"
      subnetworks                   = [
        {
          name                      = "gcp-vpc-prd-out-fw-1-yyz-inf-pub-tier-01"
          source_ip_ranges_to_nat   = ["ALL_IP_RANGES"]
          secondary_ip_range_names  = null
        }
      ]
  }
}