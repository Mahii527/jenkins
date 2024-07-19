#...................................................... locals .................................................#

variable "project_id" {
  type          = string
  description   = "The ID of the project in which the resource belongs."
}
variable "certificate_type" {
  type          = string
  description   = "Type of ssl certificate: managed or custom"
}
variable "ssl_certificate_name" {
  type          = string
  description   = "Name of the resource."
}
variable "ssl_certificate_description" {
  type          = string
  description   = "An optional description of this resource."
}

#................................................. SSL Certificate ...............................................#

variable "private_key_path" {
  type          = string
  description   = "The write-only private key in PEM format."
}
variable "certificate_path" {
  type          = string
  description   = "The certificate in PEM format."
}
variable "domains" {
  type          = list(string)
  description   = "Domains for which a managed SSL certificate will be valid. Currently, there can be up to 100 domains in this list."
}