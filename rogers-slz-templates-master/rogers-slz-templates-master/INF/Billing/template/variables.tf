#........................................... Provider Block ............................................#

variable "project_id" {
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

#............................................ Bigquery Dataset .........................................#

variable "dataset" {
    sensitive   = false
}