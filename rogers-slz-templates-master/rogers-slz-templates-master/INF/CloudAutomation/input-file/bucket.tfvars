bucket = {
    "gcp-yyz-prd-inf-cloudautomation-sbuc-01"       = {
        delete                                      = false
        project_id                                  = "gcp-prj-inf-automation-prd-01" ,
        gcs_location                                = "US",
        force_destroy                               = false,
        storage_class                               = "STANDARD",
        labels                                      = {}
        uniform_bucket_level_access                 = true,
        public_access_prevention                    = "enforced" ,
        enable_versioning                           = true,
        custom_placement_config                     = null
        lifecycle_rule                              = [
            {
                action                              = [
                    {
                        type                        = "Delete"
                        storage_class               = null
                    }
                ]
            
                condition                           = [
                    {
                        age                         = 0
                        created_before              = null
                        with_state                  = "ARCHIVED"
                        matches_storage_class       = []
                        matches_prefix              = []
                        matches_suffix              = []
                        num_newer_versions          = 5
                        custom_time_before          = null 
                        days_since_custom_time      = 0
                        days_since_noncurrent_time  = 0
                        noncurrent_time_before      = null
                    }
                ]
            },
            {
                action                              = [
                    {
                        type                        = "Delete"
                        storage_class               = null
                    }
                ]
            
                condition                           = [
                    {
                        age                         = 0
                        created_before              = null
                        with_state                  = "ANY"
                        matches_storage_class       = []
                        matches_prefix              = []
                        matches_suffix              = []
                        num_newer_versions          = 0
                        custom_time_before          = null 
                        days_since_custom_time      = 0
                        days_since_noncurrent_time  = 1
                        noncurrent_time_before      = null
                    }
                ]
            }
        ]
    }        
}