variable "project_id" {
    type                  = string
    description           = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
    # default               = "hardy-binder-411706"
}
variable "region" {
    type                  = string
    description           = "(Required) A reference to the region where the regional NEGs reside."
    # default               = "us-central1"
}
variable "region_network_endpoint_group" {
    type                  = string
    description           = "The network endpoint group this endpoint is part of."
    # default               = ""
}
variable "port" {
    type                  = string
    description           = "Port number of network endpoint."
    # default               = 80
}
variable "fqdn" {
    type                  = string
    description           = "Fully qualified domain name of network endpoint."
    # default               = "backend.example.com"
}
variable "ip_address" {
    type                  = string
    description           = "IPv4 address external endpoint. This can only be specified when network_endpoint_type of the NEG is INTERNET_IP_PORT."
    # default               = "8.8.8.8"
}
/* variable "name"{
    type = string
    description ="name of the network endpoint group"
    default ="ip-port-neg"
}
variable "network_endpoint_type"{
    type = string
    description = "(Optional) Type of network endpoints in this network endpoint group."
    default = "INTERNET_IP_PORT"
}
variable "auto_create_subnetworks"{
    type = string
    description = ""
 
} */