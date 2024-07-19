variable "display_name" {
  description = "A user-assigned name for this group, used only for display purposes."
  type        = string
  /* default="group" */
}
variable "filter" {
  description = "The filter used to determine which monitored resources belong to this group"
  type        = string
  /* default="resource.metadata.region=\"us-central1\"" */
}
/* variable "parent_name" {
  description = "The name of the group's parent, if it has one"
  type        = string
}
variable "is_cluster" {
  description = "If true, the members of this group are considered to be a cluster"
  type        = string
}
variable "project" {
  description = "The ID of the project in which the resource belongs"
  type        = string
} */