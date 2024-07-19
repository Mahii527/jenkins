variable "project_id" {
    default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}
variable "folder_iam" {
    sensitive   = false
}
variable "project_iam" {
    sensitive   = false
}