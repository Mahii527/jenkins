locals {
  config_active            = templatefile("${path.module}/fgt-base-config.tpl", {
    hostname               = "prdyzsecfgtvm01"
    unicast_peer_ip        = data.google_compute_address.hasync_ips[1].address
    unicast_peer_netmask   = cidrnetmask(data.google_compute_subnetwork.subnets[2].ip_cidr_range)
    ha_prio                = 1
    healthcheck_port       = "8008"
    api_key                = random_string.api_key.result
    out_ip                 = data.google_compute_address.pub_ips[0].address
    ext_gw                 = data.google_compute_subnetwork.subnets[0].gateway_address
    int_ip                 = data.google_compute_address.priv_ips[0].address
    int_gw                 = data.google_compute_subnetwork.subnets[1].gateway_address
    int_cidr               = data.google_compute_subnetwork.subnets[0].ip_cidr_range
    hasync_ip              = data.google_compute_address.hasync_ips[0].address
    mgmt_ip                = data.google_compute_address.mgmt_ips[0].address
    mgmt_gw                = data.google_compute_subnetwork.subnets[3].gateway_address
    ilb_ip                 = data.google_compute_address.ilb_ip.address
    api_acl                = ["10.23.224.0/28"] # ["${data.http.my_ip.body}/32"]
  })

  config_passive           = templatefile("${path.module}/fgt-base-config.tpl", {
    hostname               = "prdyzsecfgtvm02"
    unicast_peer_ip        = data.google_compute_address.hasync_ips[0].address
    unicast_peer_netmask   = cidrnetmask(data.google_compute_subnetwork.subnets[2].ip_cidr_range)
    ha_prio                = 0
    healthcheck_port       = "8008"
    api_key                = random_string.api_key.result
    out_ip                 = data.google_compute_address.pub_ips[1].address
    ext_gw                 = data.google_compute_subnetwork.subnets[0].gateway_address
    int_ip                 = data.google_compute_address.priv_ips[1].address
    int_gw                 = data.google_compute_subnetwork.subnets[1].gateway_address
    int_cidr               = data.google_compute_subnetwork.subnets[0].ip_cidr_range
    hasync_ip              = data.google_compute_address.hasync_ips[1].address
    mgmt_ip                = data.google_compute_address.mgmt_ips[1].address
    mgmt_gw                = data.google_compute_subnetwork.subnets[3].gateway_address
    ilb_ip                 = data.google_compute_address.ilb_ip.address
    api_acl                = ["10.23.224.0/28"] # ["${data.http.my_ip.body}/32"]
  })
}