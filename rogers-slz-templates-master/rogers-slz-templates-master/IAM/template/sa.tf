module "sa" {
    for_each                     = {
        for k, v in try(var.sa,{}): k => v if v.delete != true
    }
    source                       = "git::https://source.developers.google.com/p/my-project-amit1-415215/r/Rogers-LZ-Modules//terraform-google-cloud-service-account"
    display_name                 = each.key
    account_id                   = each.value.account_id
    description                  = each.value.description
    disabled                     = each.value.disabled
    project_id                   = each.value.project_id
    create_ignore_already_exists = each.value.create_ignore_already_exists
}