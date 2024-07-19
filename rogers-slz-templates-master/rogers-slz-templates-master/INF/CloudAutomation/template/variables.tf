#........................................... Provider Block ............................................#

variable "project_id" {
    #default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}

#......................................... Projects Creation ...........................................#

variable "projects" {
    sensitive   = false
}

#.......................................... Billing Budget .............................................#

variable "billing_budget" {
    sensitive   = false
}

#........................................... Project APIs ..............................................#

variable "apis" {
    sensitive   = false
}

#............................................. TF Bucket ...............................................#

variable "bucket" {
    sensitive   = false
}

#............................................. TF Repo .................................................#

variable "repo" {
    sensitive   = false
}

#.............................................. TF SA ..................................................#

variable "sa" {
    sensitive   = false
}

#........................................... Custom Role ...............................................#

variable "role" {
    sensitive   = false
}