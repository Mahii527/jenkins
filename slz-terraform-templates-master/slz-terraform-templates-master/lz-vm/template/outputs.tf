#.......................................... VM Instance ..........................................#

output "VMs_Details" {
  value       = module.VM-01
  sensitive   = false
  description = "The detail of the instances being created"
}