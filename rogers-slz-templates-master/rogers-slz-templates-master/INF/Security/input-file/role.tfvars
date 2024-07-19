role                           = {
  "inf_sentinel_crl_role_01"   = {
    delete                     = false
    project_id                 = "gcp-prj-inf-logging-prd-1"
    title                      = "inf-sentinel-crl-role-01"
    permissions                = [
      "pubsub.subscriptions.consume",
      "pubsub.subscriptions.get",
      "pubsub.subscriptions.list",
      "pubsub.topics.get",
      "pubsub.topics.list"
    ]
    stage                      = "ALPHA"
    description                = "Custom Role for Audit logs for Sentinel. Created on: 2024-04-02"
  }
}