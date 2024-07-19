module "neg" {
    for_each = {
      for k, v in try(var.neg,{}): k => v if v.delete != true
      }
    source                      = "git::https://source.developers.google.com/p/reference-host-prj/r/slz-tf-modules//terraform-google-network-endpoint-group"
    neg_name                    = each.key
    description                 = each.value.description
    network_endpoint_type       = each.value.network_endpoint_type
    psc_target_service          = each.value.psc_target_service
    network                     = each.value.network
    subnetwork                  = each.value.subnetwork
    cloud_run                   = [
      {
        service                 = module.cloudrun[""].Cloud_Run_Service_Details.name
      }
    ]
    app_engine                  = each.value.app_engine
    cloud_function              = each.value.cloud_function
    serverless_deployment       = each.value.serverless_deployment
    project_id                  = each.value.project_id
    depends_on                  = [ module.cloudrun ]
}