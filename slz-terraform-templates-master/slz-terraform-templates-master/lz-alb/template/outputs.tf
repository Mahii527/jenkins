#.......................................... Global External HTTPS ALB Output ....................................#

output "Bucket_Details" {
  value       = module.bucket
  description = "The details of the Bucket being created"
}
output "SSL_Certificate_Details" {
  value       = module.ssl
  description = "The details of the SSL Certificate being created"
}
output "Armor_Details" {
  value       = module.armor
  description = "The details of the Armor being created"
}
output "ALB_Details" {
  value       = module.alb
  description = "The details of the ALB being created"
}