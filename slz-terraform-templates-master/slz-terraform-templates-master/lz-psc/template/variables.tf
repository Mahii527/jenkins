variable "project_id" {
    default     = "my-project-amit1-415215"
}
variable "access_token" {
    sensitive   = true
}
variable "regional_address" {
    sensitive   = false
}
variable "global_address" {
    sensitive   = false
}
variable "private_connection" {
    sensitive   = false
}