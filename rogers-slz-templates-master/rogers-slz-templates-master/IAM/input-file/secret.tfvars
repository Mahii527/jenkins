secret                                              = {
    "peak-comfort-413811"                           = {
        delete                                      = false
        service_account_id                          = "test-872@peak-comfort-413811.iam.gserviceaccount.com"
        secret_id                                   = "secret"
        labels                                      = {
            "env"                                   = "prd"
        }
        annotations                                 = {
            "name"                                  = "extra-description"
        }
        ttl                                         = "60s"
        user_managed                                = [
            {
                replicas                            = [
                    {
                        location                    = "us-east5"
                        customer_managed_encryption = [
                            {
                                kms_key_name        = "kms-key"
                            }
                        ]
                    }
                ]
            }
        ]
        enabled                                     = true
        deletion_policy                             = "DELETE"
        is_secret_data_base64                       = true
    }
}