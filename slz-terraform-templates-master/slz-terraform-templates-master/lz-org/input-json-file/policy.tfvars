# org_policy.tfvars
org_policy = [
  # {
  #   policy            = "allow"
  #   organization_id   = "965415543182"
  #   constraint        = "gcp.resourceLocations"
  #   allow             = ["northamerica-northeast2"]
  # },
  # {
  #   policy            = "allow"
  #   organization_id   = "965415543182"
  #   constraint        = "essentialcontacts.allowedContactDomains"
  #   allow             = ["@gcpscaledelivery.com", "@hcl.com"]
  # },
  # {
  #   policy            = "allow"
  #   organization_id   = "965415543182"
  #   constraint        = "compute.trustedImageProjects"
  #   allow             = []
  # },
  # {
  #   policy            = "allow"
  #   organization_id   = "965415543182"
  #   constraint        = "compute.vmExternalIpAccess"
  #   allow             = []
  # },
  # {
  #   policy            = "allow"
  #   organization_id   = "965415543182"
  #   constraint        = "iam.workloadIdentityPoolProviders"
  #   allow             = []
  # },
  # {
  #   policy            = "allow"
  #   organization_id   = "965415543182"
  #   constraint        = "compute.storageResourceUseRestrictions"
  #   allow             = []
  # }
  
  
]

# folder_policy.tfvars
 folder_policy = [
#   {
#     policy            = "allow"
#     folder_id         = "256361316629"
#     constraint        = "gcp.resourceLocations"
#     allow             = ["northamerica-northeast2"]
#   },
#   {
#     policy            = "deny"
#     folder_id         = "256361316629"
#     constraint        = "compute.vmExternalIpAccess"
#     allow             = []
#   },
]

# project_policy.tfvars
project_policy = [
  # {
  #   policy            = "enforced"
  #   project_id        = "prj-svc"
  #   constraint        = "iam.disableCrossProjectServiceAccountUsage"
  #   allow             = []
  # },
]