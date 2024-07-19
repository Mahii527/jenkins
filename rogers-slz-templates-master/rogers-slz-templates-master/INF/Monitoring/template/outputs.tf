#...................................... Projects Creation Output .................................#

output "Project_Details" {
  description = "Details of the projects"
  value       = module.project
}

#......................................... Budget Quota ..........................................#

output "Billing_Budget_Details" {
    value     = module.billing_budget
}

#.................................. Project APIs Enablement Output ...............................#

output "Project_APIs_Details" {
  value       = module.apis
  description = "Project APIs details"
}

#................................. Project Monitoring Scope Output ...............................#

output "Monitoring_Scope_Details" {
  value       = module.scope
  description = "Project Monitoring Scope details"
}