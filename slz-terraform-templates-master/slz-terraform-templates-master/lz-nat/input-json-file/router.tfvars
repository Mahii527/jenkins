router = [
  {
    create_router = true
    router_name   = "qa-host-cloud-router"
    project_id    = "reference-host-prj"
    region        = "us-central1"
    network       = "qa-host-shared-vpc"
  }
]