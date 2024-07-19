# org_policy.tfvars
org_policy                          = {
  "gcp.resourceLocations"           = {
    delete                          = false
    org_id                          = ""
    version                         = null
    boolean_policy                  = [
        /* {
            enforced                = false
        } */
    ]
    list_policy                     = [
        {
            allow                   = [
                {
                    all             = false
                    values          = [""]
                }
            ]
            deny                    = [
                {
                    all             = false
                    values          = [""]
                }
            ]
        }
    ]
    restore_policy                  = [
        /* {
            default                 = false
        } */
    ]
  }
}

# folder_policy.tfvars
folder_policy                       = {
  "gcp.resourceLocations"           = {
    delete                          = false
    folder_id                       = "folders/"
    version                         = null
    boolean_policy                  = [
        /* {
            enforced                = false
        } */
    ]
    list_policy                     = [
        {
            allow                   = [
                {
                    all             = false
                    values          = [""]
                }
            ]
            deny                    = [
                {
                    all             = false
                    values          = [""]
                }
            ]
        }
    ]
    restore_policy                  = [
        /* {
            default                 = false
        } */
    ]
  }
}

# project_policy.tfvars
project_policy                      = {
  "gcp.resourceLocations"           = {
    delete                          = false
    project_id                      = ""
    version                         = null
    boolean_policy                  = [
        /* {
            enforced                = false
        } */
    ]
    list_policy                     = [
        {
            allow                   = [
                {
                    all             = false
                    values          = [""]
                }
            ]
            deny                    = [
                {
                    all             = false
                    values          = [""]
                }
            ]
        }
    ]
    restore_policy                  = [
        /* {
            default                 = false
        } */
    ]
  }
}