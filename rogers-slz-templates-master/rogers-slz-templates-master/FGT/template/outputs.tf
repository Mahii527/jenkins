#......................................... Regional Address ....................................#

output "Regional_Address_Details" {
  value = module.regional_address
  description = "Regional Address Details"
}

#......................................... Cloud Router ........................................#

output "Cloud_Router_Details" {
  value = module.router
  description = "Cloud Router Details"
}

#......................................... Cloud NAT ...........................................#

output "Cloud_NAT_Details" {
  value = module.nat
  description = "Cloud NAT Details"
}

#........................................... VM Disk ...........................................#

output "Disk_Details" {
  value       = module.disk
  sensitive   = false
  description = "The detail of the disks being created"
}

#.......................................... VM Instance ........................................#

output "VMs_Details" {
  value       = module.vm
  sensitive   = false
  description = "The detail of the instances being created"
}

#............................................ UMIG .............................................#

output "UMIG_Details" {
  value       = module.umig
  sensitive   = false
  description = "The detail of the umig being created"
}

#......................................... Health Check ........................................#

output "Health_Check_Details" {
  value       = module.health_check
  sensitive   = false
  description = "The detail of the health check being created"
}

#........................................ Ext UDP NLB ..........................................#

output "NLB_Details" {
  value       = module.nlb
  description = "The details of the NLB being created"
}

#........................................ Secret Manager .......................................#

output "Secret_Details" {
  value       = module.secret
  description = "The details of the Secret being created"
}