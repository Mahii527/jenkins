umig                                    = {
    "gcp-yyz-prd-sec-fgt-umig-01"       = {
        delete                          = false
        project_id                      = "gcp-prj-inf-networkhub-prd-1",
        zone                            = "northamerica-northeast2-a",
        network                         = null
        
        umig_description                = "FGT UMIG 1"
        umig_instances                  = ["projects/gcp-prj-inf-networkhub-prd-1/zones/northamerica-northeast2-a/instances/prdyzsecfgtvm01"]
        named_port                      = []
    },
    "gcp-yyz-prd-sec-fgt-umig-02"       = {
        delete                          = false
        project_id                      = "gcp-prj-inf-networkhub-prd-1",
        zone                            = "northamerica-northeast2-b",
        network                         = null
        
        umig_description                = "FGT UMIG 2"
        umig_instances                  = ["projects/gcp-prj-inf-networkhub-prd-1/zones/northamerica-northeast2-b/instances/prdyzsecfgtvm02"]
        named_port                      = []
    }
}