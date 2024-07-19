variable "project_id" {
    #default     = "peak-comfort-413811"
}
variable "access_token" {
    sensitive   = true
}
variable "vpc" {
    sensitive   = false
}
variable "subnets" {
    sensitive = false
}
variable "firewall" {
    sensitive   = false
}
variable "vpc_peering" {
    sensitive   = false
}