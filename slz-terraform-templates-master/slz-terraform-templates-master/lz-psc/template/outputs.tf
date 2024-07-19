#......................................... Regional Address ....................................#

output "Regional_Address_Details" {
  value = module.regional_address
  description = "Regional Address Details"
}

#......................................... Global Address ......................................#

output "Global_Address_Details" {
  value = module.global_address
  description = "Global Address Details"
}

#..................................... Private Connection ......................................#

output "Private_Networking_Connection_Details" {
  value = module.private_connection
  description = "Private Networking Connection Details"
}