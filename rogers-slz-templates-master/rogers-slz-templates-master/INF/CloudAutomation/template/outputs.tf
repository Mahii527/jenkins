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

#...................................... TF Bucket Output .........................................#

output "Bucket_Details" {
  value       = module.bucket
  description = "The details of the Bucket being created"
}

#....................................... TF Repo Output ..........................................#

output "Repo_Details" {
  value       = module.repo
  description = "The details of the Repository being created"
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