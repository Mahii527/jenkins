alb                                   = {
    "qa-svc-https-lb-frontend"        = {
        delete                        = false
        project_id                    = "reference-service-prj"
        target_proxy_type             = "https"
        proxy_name                    = "qa-svc-target-https-proxy"
        proxy_description             = "HTTPS Target Proxy for HTTPS LB"
        load_balancing_scheme         = "EXTERNAL_MANAGED"
        backend_type                  = "bucket"
        enable_cdn                    = true
        url_map_name                  = "qa-svc-https-lb"
        url_map_description           = "URL MAP for HTTPS LB"
        backend_service_name          = null
        backend_service_description   = null
        health_check_id               = []
        backend_service_protocol      = null
        backend_service_timeout_sec   = null
        mig_group                     = null
        balancing_mode                = null
        backend_bucket_name           = "qa-svc-https-lb-backend"
        backend_bucket_description    = "Backend Service for HTTPS LB"
        frontend_description          = "Frontend for HTTPS LB"
        ip_protocol                   = "TCP"
        port_range                    = "443"
    }
}