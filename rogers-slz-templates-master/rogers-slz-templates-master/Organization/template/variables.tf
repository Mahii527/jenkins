#........................................... Provider Block ............................................#

variable "project_id" {
    #default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}

# *************************************** Level-2 Folders Configuration ************************************** #
variable "Level_2_BU_Folders" {
    sensitive   = false
}
# *********************************** End Level-2 Folders Configuration ************************************** #


# *************************************** Level-3 Folders Configuration ************************************** #
variable "Level_3_Digital_BU_Folders" {
    sensitive   = false
}
variable "Level_3_Media_BU_Folders" {
    sensitive   = false
}
variable "Level_3_ICSU_BU_Folders" {
    sensitive   = false
}
# *********************************** End Level-3 Folders Configuration ************************************** #


# *************************************** Level-4 Folders Configuration ************************************** #
variable "Level_4_Digital_NPE_ENV_Folders" {
    sensitive   = false
}
variable "Level_4_Digital_PROD_ENV_Folders" {
    sensitive   = false
}
variable "Level_4_Media_NPE_ENV_Folders" {
    sensitive   = false
}
variable "Level_4_Media_PROD_ENV_Folders" {
    sensitive   = false
}
variable "Level_4_ICSU_NPE_ENV_Folders" {
    sensitive   = false
}
variable "Level_4_ICSU_PROD_ENV_Folders" {
    sensitive   = false
}
# *********************************** End Level-4 Folders Configuration ************************************** #

# *************************************** Level-5 Folders Configuration ************************************** #
variable "Level_5_INF_Folders" {
    sensitive   = false
}
variable "Level_5_Digital_NPE_DEV_Folders" {
    sensitive   = false
}
variable "Level_5_Digital_NPE_QA_Folders" {
    sensitive   = false
}
variable "Level_5_Digital_NPE_UAT_Folders" {
    sensitive   = false
}
variable "Level_5_Digital_NPE_STG_Folders" {
    sensitive   = false
}
# *********************************** End Level-5 Folders Configuration ************************************** # 

#........................................ Organisation Policy ..........................................#

variable "org_policy" {
    sensitive = false
}

#.......................................... Folder Policy ..............................................#

variable "folder_policy" {
    sensitive = false
}

#.......................................... Project Policy .............................................#

variable "project_policy" {
    sensitive = false
}

#........................................... Host Project ..............................................#

variable "host_project" {
    sensitive = false
}

#.......................................... Service Project ............................................#

variable "service_project" {
    sensitive = false
}