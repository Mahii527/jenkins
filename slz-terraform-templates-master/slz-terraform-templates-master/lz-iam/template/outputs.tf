#.......................................... Project Iam Output ......................................#

output "IAM_Details" {
  value       = module.project_iam
  description = "The details of the IAM Permissions being Granted"
}