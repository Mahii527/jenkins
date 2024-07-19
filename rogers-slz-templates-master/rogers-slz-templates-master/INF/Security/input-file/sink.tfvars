sink                               = {
  "gcp-yyz-prd-siem-sink-01"       = {
    delete                         = false
    org_id                         = "179572310621"
    filter                         = null
    destination                    = "pubsub.googleapis.com/projects/gcp-prj-inf-logging-prd-1/topics/gcp-yyz-prd-sentinal-psub-01"
    description                    = "It will be used as sink audit logs to the identified pub/sub subscription in Logging project"
    disabled                       = false
    include_children               = true
    bigquery_options               = null
    /* {
      use_partitioned_tables = false
    } */
    exclusions                     = [
        /* {
            name                   = null
            description            = null
            filter                 = null
            disabled               = false
        } */ 
    ]
  }
}