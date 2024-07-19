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

#............................................ VPC Output .........................................#

output "VPC_Details" {
  value       = module.vpc
  description = "The details of the VPC being created"
}

#......................................... Subnet Output .........................................#

output "VPC_Subnet_Details" {
  value       = module.vpc_subnets
  description = "The created subnet resources"
}

#........................................ Firewall Output ........................................#

output "VPC_Firewall_Rule_Details" {
  value = module.vpc_firewall_rule
  description = "VPC Firewall Rules Details"
}

#........................................ VPC Peering Output .....................................#

output "VPC_Peering_1_2" {
  value = module.vpc_peering_1_2
  description = "VPC Peering 1-2"
}

output "VPC_Peering_2_1" {
  value = module.vpc_peering_2_1
  description = "VPC Peering 2-1"
}

#....................................... Compute Route Output ....................................#

output "Routes_details" {
  value = module.route
  description = "Compute Routes Details"
}