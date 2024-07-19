subnets = {
  # ************************************* Network HUB Subnets Configuration *********************************** #

  # ................... HUB VPC Subnets Configuration .................. #
  "gcp-vpc-prd-hub-shr-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkhub-prd-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-cmn-prv-tier-01" 
        subnet_ip                    = "10.23.225.128/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
      {
        subnet_name                  = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-log-prv-tier-01" 
        subnet_ip                    = "10.23.225.0/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
      {
        subnet_name                  = "gcp-vpc-prd-hub-shr-1-yyz-inf-shr-mon-prv-tier-01" 
        subnet_ip                    = "10.23.225.64/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ............... End HUB VPC Subnets Configuration .................. #


  # ................. OUT (UNTRUST) VPC Subnets Configuration ................ #
  "gcp-vpc-prd-out-fw-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkhub-prd-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-out-fw-1-yyz-inf-pub-tier-01" 
        subnet_ip                    = "100.64.224.0/28"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ............. End Untrust VPC Subnets Configuration ................ #


  # ................... Mgmt VPC Subnets Configuration ................. #
  "gcp-vpc-prd-mgmt-fw-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkhub-prd-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-mgmt-fw-1-yyz-inf-prv-tier-01" 
        subnet_ip                    = "10.23.224.0/28"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ............... End Mgmt VPC Subnets Configuration ................. #


  # .................... HA VPC Subnets Configuration .................. #
  "gcp-vpc-prd-ha-fw-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkhub-prd-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-ha-fw-1-yyz-inf-prv-tier-01" 
        subnet_ip                    = "100.64.224.32/28"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ................ End HA VPC Subnets Configuration .................. #

  # ********************************* End Network HUB Subnets Configuration *********************************** #



  # ************************************ Network SPOKE Subnets Configuration ********************************** #

  # ............... DIGITAL PROD Spoke VPC Subnets Configuration ............... #
  "gcp-vpc-prd-shr-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkspk-prd-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-prd-shr-1-yyz-digital-prv-tier-01" 
        subnet_ip                    = "10.23.229.0/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
        {
        subnet_name                  = "gcp-vpc-prd-shr-1-yyz-digital-prv-tier-02" 
        subnet_ip                    = "10.23.229.64/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ........... End DIGITAL PROD Spoke VPC Subnets Configuration ............... #

  # ............... DIGITAL DEV  Spoke VPC Subnets Configuration ............... #
  "gcp-vpc-npe-dev-shr-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkspk-dev-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-npe-dev-shr-1-yyz-digital-prv-tier-01" 
        subnet_ip                    = "10.23.231.0/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
        {
        subnet_name                  = "gcp-vpc-npe-dev-shr-1-yyz-digital-prv-tier-02" 
        subnet_ip                    = "10.23.231.64/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ........... End DIGITAL DEV Spoke VPC Subnets Configuration ............... #

  # ............... DIGITAL QA Spoke VPC Subnets Configuration ............... #
  "gcp-vpc-npe-qa-shr-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkspk-qa-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-npe-qa-shr-1-yyz-digital-prv-tier-01" 
        subnet_ip                    = "10.23.234.0/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
        {
        subnet_name                  = "gcp-vpc-npe-qa-shr-1-yyz-digital-prv-tier-02" 
        subnet_ip                    = "10.23.234.64/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ........... End DIGITAL QA Spoke VPC Subnets Configuration ............... #

    # ............... DIGITAL STG Spoke VPC Subnets Configuration ............... #
  "gcp-vpc-npe-stg-shr-1" = {
    delete                           = false
    project_id                       = "gcp-prj-inf-networkspk-stg-1"
    subnets                          = [
      {
        subnet_name                  = "gcp-vpc-npe-stg-shr-1-yyz-digital-prv-tier-01" 
        subnet_ip                    = "10.23.237.0/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      },
        {
        subnet_name                  = "gcp-vpc-npe-stg-shr-1-yyz-digital-prv-tier-02" 
        subnet_ip                    = "10.23.237.64/26"
        subnet_region                = "northamerica-northeast2"
        subnet_private_access        = true
        subnet_flow_logs             = true
        subnet_flow_logs_interval    = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling    = 0.7
        subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr = true
      }
    ]
    secondary_ranges = {}
  },
  # ........... End DIGITAL STG Spoke VPC Subnets Configuration ............... #
}

  # ************************************ END Network SPOKE Subnets Configuration ********************************** #
