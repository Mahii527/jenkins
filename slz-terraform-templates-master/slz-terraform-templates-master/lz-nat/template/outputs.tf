#....................................... Cloud Router .....................................#

output "Cloud_Router_Details" {
  value = module.router
  description = "Cloud Router Details"
}

#....................................... Cloud NAT ........................................#

output "Cloud_NAT_Details" {
  value = module.nat
  description = "Cloud NAT Details"
}