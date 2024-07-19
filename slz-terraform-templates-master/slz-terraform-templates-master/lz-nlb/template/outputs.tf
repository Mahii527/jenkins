#.......................................... Target pool ..........................................#

output "Target_Pool_Details" {
  value       = module.target_pool
  sensitive   = false
  description = "The detail of the target pool being created"
}

#.......................................... Health Check ..........................................#

output "Health_Check_Details" {
  value       = module.health_check
  sensitive   = false
  description = "The detail of the health check being created"
}

#.......................................... Ext UDP NLB ...........................................#

output "NLB_Details" {
  value       = module.nlb
  description = "The details of the NLB being created"
}