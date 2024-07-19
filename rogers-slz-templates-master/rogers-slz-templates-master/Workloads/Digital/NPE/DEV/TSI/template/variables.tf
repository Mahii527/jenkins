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

#........................................... Global Address ............................................#

variable "global_address" {
    sensitive   = false
}

#.......................................... SSL Certificate ............................................#

variable "sslcert" {
    sensitive   = false
}

#............................................ Cloud Run Service ........................................#

variable "cloudrun" {
    sensitive   = false
}

#........................................ Global External HTTPS ALB ....................................#

variable "alb" {
    sensitive   = false
}