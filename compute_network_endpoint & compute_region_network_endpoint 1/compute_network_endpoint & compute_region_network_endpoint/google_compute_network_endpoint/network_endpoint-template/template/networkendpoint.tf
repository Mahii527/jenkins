module "network_endpoint" {
   for_each = {
      for k, v in try(var.network_endpoint,{}): k => v if v.delete != true
      }
   source = "/home/r/terra/google_compute_network_endpoint"
   project_id                                                      = each.value.project_id
   google_compute_network_endpoint_group_name                      = each.key
   network_endpoints                                               = each.value.network_endpoints
   zone                                                            = each.value.zone
   port                                                            = each.value.port
   instance                                                        = each.value.instance
}