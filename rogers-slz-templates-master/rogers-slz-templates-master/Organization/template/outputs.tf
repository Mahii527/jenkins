# *************************************** Level-2 Folders_Details Configuration ************************************** #
output "Level_2_BU_Folders_Details" {
    sensitive   = false
    value       = module.Level_2_BU_Folders
}
# *********************************** End Level-2 Folders_Details Configuration ************************************** #


# *************************************** Level-3 Folders_Details Configuration ************************************** #
output "Level_3_Digital_BU_Folders_Details" {
    sensitive   = false
    value       = module.Level_3_Digital_BU_Folders
}
output "Level_3_Media_BU_Folders_Details" {
    sensitive   = false
    value       = module.Level_3_Media_BU_Folders
}
output "Level_3_ICSU_BU_Folders_Details" {
    sensitive   = false
    value       = module.Level_3_ICSU_BU_Folders
}
# *********************************** End Level-3 Folders_Details Configuration ************************************** #


# *************************************** Level-4 Folders_Details Configuration ************************************** #
output "Level_4_Digital_NPE_ENV_Folders_Details" {
    sensitive   = false
    value       = module.Level_4_Digital_NPE_ENV_Folders
}
output "Level_4_Digital_PROD_ENV_Folders_Details" {
    sensitive   = false
    value       = module.Level_4_Digital_PROD_ENV_Folders
}
output "Level_4_Media_NPE_ENV_Folders_Details" {
    sensitive   = false
    value       = module.Level_4_Media_NPE_ENV_Folders
}
output "Level_4_Media_PROD_ENV_Folders_Details" {
    sensitive   = false
    value       = module.Level_4_Media_PROD_ENV_Folders
}
output "Level_4_ICSU_NPE_ENV_Folders_Details" {
    sensitive   = false
    value       = module.Level_4_ICSU_NPE_ENV_Folders
}
output "Level_4_ICSU_PROD_ENV_Folders_Details" {
    sensitive   = false
    value       = module.Level_4_ICSU_PROD_ENV_Folders
}
# *********************************** End Level-4 Folders_Details Configuration ************************************** #

# *************************************** Level-5 Folders_Details Configuration ************************************** #
output "Level_5_INF_Folders_Details" {
    sensitive   = false
    value       = module.Level_5_INF_Folders
}
# *********************************** End Level-5 Folders_Details Configuration ************************************** # 


#.................................. Organization Policy Output ...................................#

output "Org_Policy_Details" {
  description = "Organization Policy Details."
  value       = module.org_policy
}

#...................................... Folder Policy Output .....................................#

output "Folder_Policy_Details" {
  description = "Folder Policy Details."
  value       = module.folder_policy
}

#...................................... Project Policy Output ....................................#

output "Project_Policy_Details" {
  description = "Project Policy Details."
  value       = module.project_policy
}

#....................................... Host Project Output .....................................#

output "Host_Project_Details" {
  value = module.host_project
  description = "Host Project Details"
}

#...................................... Service Project Output ...................................#

output "Service_Project_Details" {
  value = module.service_project
  description = "Service Project Details"
}