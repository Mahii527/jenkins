#.......................................... Secret_Manager ..........................................#

module "secret" {
    for_each          = {
        for k, v in try(var.secret,{}): k => v if v.delete != true
    }
    source                = "git::https://source.developers.google.com/p/peak-comfort-413811/r/tset//terraform-google-secret-manager"
    project_id            = each.key
    service_account_id    = each.value.service_account_id
    secret_id             = each.value.secret_id
    labels                = each.value.labels
    annotations           = each.value.annotations
    ttl                   = each.value.ttl
    user_managed          = each.value.user_managed
    enabled               = each.value.enabled
    deletion_policy       = each.value.deletion_policy
    is_secret_data_base64 = each.value.is_secret_data_base64
}