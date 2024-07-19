#........................................... Provider Block ............................................#

variable "project_id" {
    #default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}

#.......................................... Service Account ............................................#

variable "sa" {
    sensitive = false
}

#........................................... Secret Manager ............................................#

variable "secret" {
    sensitive   = false
}