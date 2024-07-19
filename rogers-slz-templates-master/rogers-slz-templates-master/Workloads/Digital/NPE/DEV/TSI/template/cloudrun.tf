module "cloudrun" {
  for_each     = {
    for k, v in try(var.cloudrun,{}): k => v if v.delete != true
  }
  source                         = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-run-service"
  service_name                   = each.key
  location                       = each.value.location
  traffic                        = each.value.traffic
  template                       = each.value.template
  containers                     = each.value.containers
  env                            = each.value.env
  ports                          = each.value.ports
  resources                      = each.value.resources
  volume_mounts                  = each.value.volume_mounts
  startup_probe                  = each.value.startup_probe
  liveness_probe                 = each.value.liveness_probe
  container_concurrency          = each.value.container_concurrency
  timeout_seconds                = each.value.timeout_seconds
  service_account_name           = each.value.service_account_name
  volumes                        = each.value.volumes
  project_id                     = each.value.project_id
  autogenerate_revision_name     = each.value.autogenerate_revision_name
  metadata                       = each.value.metadata
  depends_on                     = [ module.sslcert ]
}