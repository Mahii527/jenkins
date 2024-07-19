#...................................... Projects Creation Output .................................#

output "Project_Details" {
  description = "Details of the projects"
  value       = module.project
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

#...................................... Bigquery Dataset Output...................................#

output "Bigquery_Dataset_Details" {
  value = module.dataset
  description = "Bigquery Datset details"
}