variable "project_id" {
  description = "The GCP project ID"
  type        = string
}
 
variable "region" {
  description = "The GCP region"
  type        = string
}
 
variable "zone" {
  description = "The GCP zone"
  type        = string
}
 
variable "instance_name" {
  description = "The name of the VM "
  type        = string
}
 
variable "machine_type" {
  description = "The machine type to use for the VM"
  type        = string
}
 
variable "image" {
  description = "The image to use for the VM boot disk"
  type        = string
  
}
 
variable "network" {
  description = "The VPC network to attach the VM to"
  type        = string
 
}
 
variable "tags" {
  description = "Tags to assign to the VM "
  type        = list(string)
}
 
variable "metadata" {
  description = "Metadata key-value pairs to assign to the VM"
  type        = map(string)
  # default     = {}
}
 
