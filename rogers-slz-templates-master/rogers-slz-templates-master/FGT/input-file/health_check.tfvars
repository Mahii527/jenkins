health_check                           = {
    "gcp-yyz-prd-sec-fgt-ilb-01-hc-01" = {
        delete                         = false
        health_check_type              = "region",
        project_id                     = "gcp-prj-inf-networkhub-prd-1",
        region                         = "northamerica-northeast2",
        health_check_description       = "Health Check for FGT Firewall LB",
        check_interval_sec             = 5,
        timeout_sec                    = 5,
        healthy_threshold              = 2,
        unhealthy_threshold            = 2,
        http_health_check              = [
            {
                port                   = 8008
            }
        ]
        tcp_health_check               = []
    }
}