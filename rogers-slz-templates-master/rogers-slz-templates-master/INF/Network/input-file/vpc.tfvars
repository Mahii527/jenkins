vpc                             = {

# .............. Network HUB Project VPCs Configuration ............. #
  "gcp-vpc-prd-hub-shr-1"       = {
    delete                      = false
    description                 = "HUB Shared VPC used to share Network Component for Infra Shared Services"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkhub-prd-1"
    delete_routes               = true
  },
  "gcp-vpc-prd-out-fw-1"        = {
    delete                      = false
    description                 = "Out VPC for Firewall to connect with public/internet & network/services"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkhub-prd-1"
    delete_routes               = true
  },
  "gcp-vpc-prd-mgmt-fw-1"       = {
    delete                      = false
    description                 = "Management VPC to host management services like- jump server"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkhub-prd-1"
    delete_routes               = true
  },
  "gcp-vpc-prd-ha-fw-1"         = {
    delete                      = false
    description                 = "To provide HA sync between two firewall appliances"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkhub-prd-1"
    delete_routes               = true
  },
# .......... End Network HUB Project VPCs Configuration ............. #


# ............. Network Spoke Project VPCs Configuration ............ #
  "gcp-vpc-prd-shr-1"           = {
    delete                      = false
    description                 = "Shared VPC for Prod Network Spoke"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkspk-prd-1"
    delete_routes               = true
  },
  "gcp-vpc-npe-dev-shr-1"       = {
    delete                      = false
    description                 = "Shared VPC for Dev Network Spoke"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkspk-dev-1"
    delete_routes               = true
  },
  "gcp-vpc-npe-qa-shr-1"        = {
    delete                      = false
    description                 = "Shared VPC for QA Network Spoke"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkspk-qa-1"
    delete_routes               = true
  },
  "gcp-vpc-npe-stg-shr-1"       = {
    delete                      = false
    description                 = "Shared VPC for STG Network Spoke"
    auto_create_subnetworks     = false
    routing_mode                = "GLOBAL"
    project_id                  = "gcp-prj-inf-networkspk-stg-1"
    delete_routes               = true
  }
# ......... End Network Spoke Project VPCs Configuration ........... #
}