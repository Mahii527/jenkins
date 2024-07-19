#.................................... Folders Creation Output ....................................#

output "Folders_Details" {
  description = "Folder Details."
  value       = module.folders
}

#...................................... Projects Creation Output .................................#

output "Project_Details" {
  description = "Details of the projects"
  value       = module.project
}

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

#......................................... Budget Quota ..........................................#

output "Billing_Budget_Details" {
    value = module.billing_budget
}

#.................................. Project APIs Enablement Output ...............................#

output "Project_APIs_Details" {
  value = module.apis
  description = "Project APIs details"
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