variable "project_id" {
    default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}
variable "router" {
    sensitive   = false
}
variable "nat" {
    sensitive   = false
}