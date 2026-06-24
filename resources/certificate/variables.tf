variable "domain_name" {
  type        = string
  description = "(Required) A domain name for which the certificate should be issued"
}

variable "subject_alternative_names" {
  type        = list(string)
  default     = []
  description = "(Optional) Set of domains that should be SANs in the issued certificate. To remove all elements of a previously configured list, set this value equal to an empty list ([]) or use the terraform taint command to trigger recreation."
}

variable "validation_method" {
  type        = string
  description = "(Required) Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform."
}

variable "options" {
  type = object({
    # (Optional) Specifies whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED.
    certificate_transparency_logging_preference = string
  })
  default     = null
  description = "(Optional) Configuration block used to set certificate options."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) A map of tags assigned to all modules."
}
