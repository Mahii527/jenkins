variable "project_id" {
  description         = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type                = string
}
variable "ip_address" {
  description         = "(Required) IPv4 address of network endpoint. The IP address must belong to a VM in GCE"
  type                = string
}
variable "google_compute_network_endpoint_group_name" {
  type                = string
  description         = "(Required) The network endpoint group this endpoint is part of"
}
variable "instance" {
  description         = "(Optional) The name for a specific VM instance that the IP address belongs to."
  type                = string
}
variable "zone" {
  description         = "(Optional) Zone where the containing network endpoint group is located."
  type                = string
}
variable "port" {
  description         = "(Optional) Port number of network endpoint."
  type                = string
}
