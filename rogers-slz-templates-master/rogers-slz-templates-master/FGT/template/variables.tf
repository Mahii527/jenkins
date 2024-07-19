variable "project_id" {
    #default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}

/* variable "my_ip_url" {
    sensitive   = false
} */
variable admin_acl {
  type          = list(string)
  default       = ["0.0.0.0/0"]
  description   = "List of CIDRs allowed to connect to FortiGate management interfaces"
}
variable "image_project" {
    sensitive   = false
}
/* variable "image_family" {
    sensitive   = false
} */
variable "image_name" {
    sensitive   = false
}
variable "fgt_project_id" {
}
variable "region" {
  type          = string
  description   = "Region to deploy all resources in. Must match var.zones if defined."
}
variable "subnets" {
  type          = list(string)
  description   = "Names of four existing subnets to be connected to FortiGate VMs (external, internal, heartbeat, management)"
  validation {
    condition   = length(var.subnets) == 4
    error_message = "Please provide exactly 4 subnet names (external, internal, hasync, management)."
  }
}
variable "ilb_ip" {
  type          = string
  description   = "Name of existing ip to be connected to FortiGate LB"
}
variable "pub_ips" {
  type          = list(string)
  description   = "Names of existing ips to be connected to FortiGate VMs (external)"
  validation {
    condition   = length(var.pub_ips) == 2
    error_message = "Please provide exactly 2 ips of (external subnet)."
  }
}
variable "priv_ips" {
  type          = list(string)
  description   = "Names of existing ips to be connected to FortiGate VMs (internal)"
  validation {
    condition   = length(var.priv_ips) == 2
    error_message = "Please provide exactly 2 ips of (internal subnet)."
  }
}
variable "hasync_ips" {
  type          = list(string)
  description   = "Names of existing ips to be connected to FortiGate VMs (hasync)"
  validation {
    condition   = length(var.hasync_ips) == 2
    error_message = "Please provide exactly 2 ips of (hasync subnet)."
  }
}
variable "mgmt_ips" {
  type          = list(string)
  description   = "Names of existing ips to be connected to FortiGate VMs (management)"
  validation {
    condition   = length(var.mgmt_ips) == 2
    error_message = "Please provide exactly 2 ips of (management subnet)."
  }
}

variable "regional_address" {
    sensitive   = false
}
variable "router" {
    sensitive   = false
}
variable "nat" {
    sensitive   = false
}
variable "disk" {
    sensitive   = false
}
variable "vm" {
    sensitive   = false
}
variable "umig" {
    sensitive   = false
}
variable "health_check" {
    sensitive   = false
}
variable "nlb" {
    sensitive   = false
}

#........................................... Secret Manager ............................................#

variable "secret" {
    sensitive   = false
}