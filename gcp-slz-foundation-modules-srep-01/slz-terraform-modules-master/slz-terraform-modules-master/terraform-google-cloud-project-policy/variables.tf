variable "policy" {
  description = "Allow/Deny policy"
  type        = string
  default     = null
}
variable "project_id" {
  description = "The project id for putting the policy"
  type        = string
  default     = null
}
variable "allow" {
  description = "(Only for list constraints) List of values which should be allowed"
  type        = list(string)
  default     = [""]
}
variable "constraint" {
  description = "The constraint to be applied"
  type        = string
}
variable "default" {
  description = "Values which should be excluded"
  type        = bool
  default     = false
}