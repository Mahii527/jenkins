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

#................................ Pubsub Org Sink Destination Output .............................#

output "Pubsub_Details" {
  value = module.pubsub
  description = "Pubsub Org Sink Destination details"
}

#................................. Organization Logging Sink Output ..............................#

output "Org_Sink_Details" {
  value = module.sink
  description = "Organization Logging Sink details"
}

#........................................ TF SA Output ...........................................#

output "SA_Details" {
  value       = module.sa
  description = "The details of the SA being created"
}

#..................................... Custom Role Output ........................................#

output "Custom_Role_Details" {
  value       = module.role
  description = "The details of the Custom Role being created"
}