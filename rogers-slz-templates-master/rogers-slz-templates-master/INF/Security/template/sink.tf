#...................................... Org Sink .....................................#

module "sink" {
  for_each = {
    for k, v in try(var.sink,{}): k => v if v.delete != true
  }
  source                          = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-logging-org-sink"
  name                            = each.key
  org_id                          = each.value.org_id
  destination                     = each.value.destination
  filter                          = each.value.filter
  description                     = each.value.description
  disabled                        = each.value.disabled
  include_children                = each.value.include_children
  bigquery_options                = each.value.bigquery_options
  exclusions                      = each.value.exclusions
  depends_on                      = [ module.pubsub ]
}