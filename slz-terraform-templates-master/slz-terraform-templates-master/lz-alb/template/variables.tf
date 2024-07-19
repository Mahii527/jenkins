variable "project_id" {
    default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}
variable "bucket" {
    sensitive   = false
}
variable "ssl" {
    sensitive   = false
}
variable "armor" {
    sensitive   = false
}
variable "alb" {
    sensitive   = false
}