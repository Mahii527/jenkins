# *************************************** Level-2 Folders Configuration ************************************** #

module "Level_2_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_2_BU_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = each.value.parent
}

# *********************************** End Level-2 Folders Configuration ************************************** #


# *************************************** Level-3 Folders Configuration ************************************** #

#............... Digital BU Folders Configuration ...............#
module "Level_3_Digital_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_Digital_BU_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["Digital"].folder_details.id
  depends_on   = [ module.Level_2_BU_Folders ]
}
#........... End Digital BU Folders Configuration ...............#

#................ Media BU Folders Configuration ................#
module "Level_3_Media_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_Media_BU_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["Media"].folder_details.id
  depends_on   = [ module.Level_3_Digital_BU_Folders ]
}
#............ End Media BU Folders Configuration ................#

#................. ICSU BU Folders Configuration ................#
module "Level_3_ICSU_BU_Folders" {
  for_each     = {
    for k, v in try(var.Level_3_ICSU_BU_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["ICSU"].folder_details.id
  depends_on   = [ module.Level_3_Media_BU_Folders ]
}
#............. End ICSU BU Folders Configuration ................#

# *********************************** End Level-3 Folders Configuration ************************************** #


# *************************************** Level-4 Folders Configuration ************************************** #

#............. Digital NPE Env Folders Configuration ............#
module "Level_4_Digital_NPE_ENV_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_Digital_NPE_ENV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_3_Digital_BU_Folders["NPE"].folder_details.id
  depends_on   = [ module.Level_3_ICSU_BU_Folders ]
}
#......... End Digital NPE Env Folders Configuration ............#

#............ Digital PROD Env Folders Configuration ............#
module "Level_4_Digital_PROD_ENV_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_Digital_PROD_ENV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_3_Digital_BU_Folders["PROD"].folder_details.id
  depends_on   = [ module.Level_4_Digital_NPE_ENV_Folders ]
}
#........ End Digital PROD Env Folders Configuration ............#

#............. Media NPE Env Folders Configuration ..............#
module "Level_4_Media_NPE_ENV_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_Media_NPE_ENV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_3_Media_BU_Folders["NPE"].folder_details.id
  depends_on   = [ module.Level_4_Digital_PROD_ENV_Folders ]
}
#......... End Media NPE Env Folders Configuration ..............#

#............. Media PROD Env Folders Configuration .............#
module "Level_4_Media_PROD_ENV_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_Media_PROD_ENV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_3_Media_BU_Folders["PROD"].folder_details.id
  depends_on   = [ module.Level_4_Media_NPE_ENV_Folders ]
}
#......... End Media PROD Env Folders Configuration .............#

#.............. ICSU NPE Env Folders Configuration ..............#
module "Level_4_ICSU_NPE_ENV_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_ICSU_NPE_ENV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_3_ICSU_BU_Folders["NPE"].folder_details.id
  depends_on   = [ module.Level_4_Media_PROD_ENV_Folders ]
}
#.......... End ICSU NPE Env Folders Configuration ..............#

#.............. ICSU PROD Env Folders Configuration .............#
module "Level_4_ICSU_PROD_ENV_Folders" {
  for_each     = {
    for k, v in try(var.Level_4_ICSU_PROD_ENV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_3_ICSU_BU_Folders["PROD"].folder_details.id
  depends_on   = [ module.Level_4_ICSU_NPE_ENV_Folders ]
}
#.......... End ICSU PROD Env Folders Configuration .............#

# *********************************** End Level-4 Folders Configuration ************************************** #


# *************************************** Level-5 Folders Configuration ************************************** #

#............. INF Application Folders Configuration ............#
module "Level_5_INF_Folders" {
  for_each     = {
    for k, v in try(var.Level_5_INF_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_2_BU_Folders["INF"].folder_details.id
  depends_on   = [ module.Level_4_ICSU_PROD_ENV_Folders ]
}
#......... End INF Application Folders Configuration ............#


# *********************************** End Level-5 Folders Configuration ************************************** # 

#............. Digital NPE DEV Folders Configuration ............#
module "Level_5_Digital_NPE_DEV_Folders" {
  for_each     = {
    for k, v in try(var.Level_5_Digital_NPE_DEV_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_4_Digital_NPE_ENV_Folders["DEV"].folder_details.id
  depends_on   = [ module.Level_5_INF_Folders ]
}
#.......... End Digital NPE DEV Folders Configuration ...........#

#............. Digital NPE QA Folders Configuration .............#
module "Level_5_Digital_NPE_QA_Folders" {
  for_each     = {
    for k, v in try(var.Level_5_Digital_NPE_QA_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_4_Digital_NPE_ENV_Folders["QA"].folder_details.id
  depends_on   = [ module.Level_5_Digital_NPE_DEV_Folders ]
}
#.......... End Digital NPE QA Folders Configuration ............#

#............. Digital NPE UAT Folders Configuration ............#
module "Level_5_Digital_NPE_UAT_Folders" {
  for_each     = {
    for k, v in try(var.Level_5_Digital_NPE_UAT_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_4_Digital_NPE_ENV_Folders["UAT"].folder_details.id
  depends_on   = [ module.Level_5_Digital_NPE_QA_Folders ]
}
#.......... End Digital NPE UAT Folders Configuration ...........#

#............. Digital NPE STG Folders Configuration ............#
module "Level_5_Digital_NPE_STG_Folders" {
  for_each     = {
    for k, v in try(var.Level_5_Digital_NPE_UAT_Folders,{}): k => v if v.delete != true
  }
  source       = "git::https://source.developers.google.com/p/gcp-prj-inf-automation-prd-01/r/gcp-yyz-prd-inf-cloudautomation-modules-srep-01//terraform-google-cloud-folder"
  folder_name  = each.key
  parent       = module.Level_4_Digital_NPE_ENV_Folders["STG"].folder_details.id
  depends_on   = [ module.Level_5_Digital_NPE_UAT_Folders ]
}
#.......... End Digital NPE STG Folders Configuration ...........#