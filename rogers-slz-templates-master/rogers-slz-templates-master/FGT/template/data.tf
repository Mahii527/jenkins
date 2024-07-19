# Auto-detect your own IP address to add it to the API trusthost list in FortiGate configuration
/* data "http" "my_ip" {
  url                                    = var.my_ip_url
  depends_on                             = [ module.regional_address ]
} */

data "google_compute_image" "fgt_image" {
  project                                = var.image_project
  #family                                 = var.image_name != null ? null : var.image_family
  name                                   = var.image_name
  depends_on                             = [ module.regional_address ]
}

data "google_compute_subnetwork" "subnets" {
  project                                = var.fgt_project_id
  count                                  = length(var.subnets)
  name                                   = var.subnets[count.index]
  region                                 = var.region
  depends_on                             = [ data.google_compute_image.fgt_image ]
}

data "google_compute_address" "ilb_ip" {
  project                                = var.fgt_project_id
  name                                   = var.ilb_ip
  region                                 = var.region
  depends_on                             = [ module.regional_address ]
}

data "google_compute_address" "pub_ips" {
  project                                = var.fgt_project_id
  count                                  = length(var.pub_ips)
  name                                   = var.pub_ips[count.index]
  region                                 = var.region
  depends_on                             = [ module.regional_address ]
}

data "google_compute_address" "priv_ips" {
  project                                = var.fgt_project_id
  count                                  = length(var.priv_ips)
  name                                   = var.priv_ips[count.index]
  region                                 = var.region
  depends_on                             = [ module.regional_address ]
}

data "google_compute_address" "hasync_ips" {
  project                                = var.fgt_project_id
  count                                  = length(var.hasync_ips)
  name                                   = var.hasync_ips[count.index]
  region                                 = var.region
  depends_on                             = [ module.regional_address ]
}

data "google_compute_address" "mgmt_ips" {
  project                                = var.fgt_project_id
  count                                  = length(var.mgmt_ips)
  name                                   = var.mgmt_ips[count.index]
  region                                 = var.region
  depends_on                             = [ module.regional_address ]
}