variable "domain" {
  type        = string
  default     = null
  description = "(Optional) Domain of the certificate to look up. Either domain or tags must be specified."
}

variable "key_types" {
  type        = set(string)
  default     = null
  description = "(Optional) Key algorithms used to filter certificates."
}

variable "most_recent" {
  type        = bool
  default     = null
  description = "(Optional) Return the most recent matching certificate. Defaults to false."
}

variable "region" {
  type        = string
  default     = null
  description = "(Optional) Region where this resource will be managed. Defaults to the Region set in the provider configuration."
}

variable "statuses" {
  type        = list(string)
  default     = null
  description = "(Optional) Certificate statuses used to filter certificates. Defaults to ISSUED."
}

variable "types" {
  type        = list(string)
  default     = null
  description = "(Optional) Certificate types used to filter certificates. Valid values are AMAZON_ISSUED, PRIVATE, and IMPORTED."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags used to filter certificates. Either domain or tags must be specified."
}
