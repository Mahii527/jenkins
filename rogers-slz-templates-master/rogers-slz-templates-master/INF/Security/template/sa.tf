module "sa" {
    for_each = {
        for k, v in try(var.sa,{}): k => v if v.delete != true
    }
    source                       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-service-account"
    display_name                 = each.value.display_name
    account_id                   = each.key
    description                  = each.value.description
    disabled                     = each.value.disabled
    project_id                   = each.value.project_id
    create_ignore_already_exists = each.value.create_ignore_already_exists
}