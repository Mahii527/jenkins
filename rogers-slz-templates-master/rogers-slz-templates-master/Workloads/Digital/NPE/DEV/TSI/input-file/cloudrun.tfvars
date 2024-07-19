cloudrun                                            = {
    "cloud-run"                                     = {
        delete                                      = false
        location                                    = "northamerica-northeast2"
        traffic                                     = [
            {
                percent                             = 100
                latest_revision                     = true
                revision_name                       = "v1-0-0"
                tag                                 = null
                url                                 = null
            }
        ]
        template                                    = [
            {
                metadata                            = [
                    {
                        labels                      = {}
                        annotations                 = ""
                        name                        = ""
                        generation                  = null
                        resource_version            = null
                        self_link                   = null
                        uid                         = null
                        annotations                 = {
                            "run.googleapis.com/client-name" = "terraform"
                        }
                    }
                ]
            }
        ]
        containers                                  = {
            name                                    = "hello-container"
            args                                    = []
            image                                   = "us-docker.pkg.dev/cloudrun/container/hello"
            command                                 = []
        }
        env                                         = [
            {
                name                                = "env"
                value                               = ""
                value_from                          = [
                    {
                        key                         = ""
                        name                        = ""
                    }
                ]
            }
        ]
        ports                                       = [
            {
                name                                = ""
                protocol                            = null
                container_port                      = "8080"
            }
        ]
        resources                                   = [
            {
                limits                              = null
                requests                            = null
            }
        ]
        volume_mounts                               = [
            {
                mount_path                          = "/mnt/shared"
                name                                = "volume"
            }
        ]
        startup_probe                               = [
            {
                initial_delay_seconds               = null
                timeout_seconds                     = null
                period_seconds                      = null
                failure_threshold                   = null
                tcp_socket                          = [
                    /* {
                        port                        = ""
                    } */
                ]
                http_get                            = [
                    {
                        path                        = ""
                        port                        = null
                        http_headers                = [
                            {
                                name                = ""
                                value               = ""
                            }
                        ]
                    }
                ]
                grpc                                = [
                    /* {
                        port                        = null
                        service                     = ""
                    } */
                ]
            }
        ]
        liveness_probe                              = [
            {
                initial_delay_seconds               = null
                timeout_seconds                     = null
                period_seconds                      = null
                failure_threshold                   = null
                http_get                            = [
                    {
                        path                        = ""
                        port                        = null
                        http_headers                = [
                            {
                                name                = ""
                                value               = ""
                            }
                        ]
                    }
                ]
                grpc                                = [
                    /* {
                        port                        = ""
                        service                     = ""
                    } */
                ]
            }
        ]
        container_concurrency                       = null
        timeout_seconds                             = 120
        service_account_email                       = null
        volumes                                     = [
            {
                name                                = "volume"
                secret                              = [
                    {
                        secret_name                 = "secret"
                        default_mode                = null
                        items                       = [
                            {
                                key                 = "key"
                                path                = ""
                                mode                = null
                            }
                        ]
                    }
                ]
                
                empty_dir                           = [
                    {
                        medium                      = "Memory"
                        size_limit                  = "128Mi"
                    }
                ]
                csi                                 = [
                    {
                        driver                      = ""
                        read_only                   = true
                        volume_attributes           = {}
                    }
                ]
            }
        ]
        project_id                                  = "peak-comfort-413811"
        autogenerate_revision_name                  = true
        metadata                                    = [
            {
                labels                              = {}
                generation                          = null
                resource_version                    = null
                self_link                           = null
                uid                                 = null
                annotations                         = {
                    "run.googleapis.com/launch-stage" = "BETA"
                }
            }
        ]
    }
}