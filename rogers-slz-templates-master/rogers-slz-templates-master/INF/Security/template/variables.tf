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

#............................................... Pubsub ................................................#

variable "pubsub" {
    sensitive   = false
}

#.............................................. Org Sink ...............................................#

variable "sink" {
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