variable "project_id" {
    default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}
variable "target_pool" {
    sensitive   = false
}
variable "health_check" {
    sensitive   = false
}
variable "nlb" {
    sensitive   = false
}