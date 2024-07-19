#...................................... Org Sink Destination .....................................#

module "pubsub" {
  for_each = {
    for k, v in try(var.pubsub,{}): k => v if v.delete != true
  }
  source                           = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-pubsub"
  topic_name                       = each.key
  project_id                       = each.value.project_id
  labels                           = each.value.labels
  topic_message_retention_duration = each.value.topic_message_retention_duration
  subscription_name                = each.value.subscription_name
  sub_message_retention_duration   = each.value.sub_message_retention_duration
  retain_acked_messages            = each.value.retain_acked_messages
  ack_deadline_seconds             = each.value.ack_deadline_seconds
  expiration_policy                = each.value.expiration_policy
  retry_policy                     = each.value.retry_policy
  enable_message_ordering          = each.value.enable_message_ordering 
  depends_on                       = [ module.apis ]
}