private_connection = [
  {
    network = "projects/reference-host-prj/global/networks/qa-host-shared-vpc"
    service = "servicenetworking.googleapis.com"
    ranges  = ["qa-host-psc-ip"]
  }
]