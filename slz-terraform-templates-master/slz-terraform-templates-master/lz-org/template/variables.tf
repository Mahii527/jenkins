#........................................... Provider Block ............................................#

variable "project_id" {
    default     = "my-project-44513-422004"
}
variable "access_token" {
    sensitive   = true
}

#.......................................... Folders Creation ...........................................#

variable "folders" {
    sensitive = false
}

#......................................... Projects Creation ...........................................#

variable "projects" {
    sensitive = false
}

#........................................ Organisation Policy ..........................................#

variable "org_policy" {
    sensitive = false
}

#.......................................... Folder Policy ..............................................#

variable "folder_policy" {
    sensitive = false
}

#.......................................... Project Policy .............................................#

variable "project_policy" {
    sensitive = false
}

#.......................................... Billing Budget .............................................#

variable "billing_budget" {
    sensitive = false
}

#........................................... Host Project ..............................................#

variable "host_project" {
    sensitive = false
}

#.......................................... Service Project ............................................#

variable "service_project" {
    sensitive = false
}

#........................................... Project APIs ..............................................#

variable "apis" {
    sensitive = false
}