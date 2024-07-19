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

#....................................... Global Address Output ...................................#

output "Global_Address_Details" {
  value       = module.global_address
  description = "Global Address Details"
}

#....................................... Global Address Output ...................................#

output "SSL_Certificate_Details" {
  value       = module.sslcert
  description = "The details of the SSL Certificate being created"
}

#..................................... Cloud Run Service Output...................................#

output "Cloud_Run_Service_Details" {
  value       = module.cloudrun
  description = "Cloud Run Service details"
}

#..................................... Global External HTTPS ALB .................................#

output "ALB_Details" {
  value       = module.alb
  description = "The details of the ALB being created"
}