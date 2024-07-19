#.......................................... Secret_Manager ..........................................#

module "secret" {
    for_each          = {
        for k, v in try(var.secret,{}): k => v if v.delete != true
    }
    source                = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-secret-manager"
    #auto                  = each.value.auto
    #user_managed          = each.value.user_managed
    secret_id             = each.key
    labels                = each.value.labels
    annotations           = each.value.annotations
    version_aliases       = each.value.version_aliases
    topics                = each.value.topics
    expire_time           = each.value.expire_time    
    ttl                   = each.value.ttl
    rotation              = each.value.rotation
    project_id            = each.value.project_id
    secret_data           = random_string.api_key.id
    enabled               = each.value.enabled
    deletion_policy       = each.value.deletion_policy
    is_secret_data_base64 = each.value.is_secret_data_base64
    depends_on            = [ module.nlb ]
}