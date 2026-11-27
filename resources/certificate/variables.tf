variable "certificate_authority_arn" {
  type        = string
  default     = null
  description = "(Optional) ARN of an ACM PCA."
}

variable "certificate_body" {
  type        = string
  default     = null
  description = "(Optional) Certificate's PEM-formatted public key."
}

variable "certificate_chain" {
  type        = string
  default     = null
  description = "(Optional) Certificate's PEM-formatted chain."
}

variable "domain_name" {
  type        = string
  default     = null
  description = "(Optional) A domain name for which the certificate should be issued."
}

variable "early_renewal_duration" {
  type        = string
  default     = null
  description = "(Optional) Amount of time to start the automatic renewal process before expiration."
}

variable "key_algorithm" {
  type        = string
  default     = null
  description = "(Optional) Algorithm of the public and private key pair used by an Amazon-issued certificate."
}

variable "subject_alternative_names" {
  type        = set(string)
  default     = []
  description = "(Optional) Set of domains that should be SANs in the issued certificate. To remove all elements of a previously configured list, set this value equal to an empty list ([]) or use the terraform taint command to trigger recreation."
}

variable "validation_method" {
  type        = string
  default     = null
  description = "(Optional) Which method to use for validation. DNS or EMAIL are valid."
}

variable "options" {
  type = object({
    # (Optional) Specifies whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED.
    certificate_transparency_logging_preference = optional(string)
    # (Optional) Specifies whether the certificate can be exported. Valid values are ENABLED or DISABLED.
    export = optional(string)
  })
  default     = null
  description = "(Optional) Configuration block used to set certificate options."
}

variable "private_key" {
  type        = string
  default     = null
  sensitive   = true
  description = "(Optional) Certificate's PEM-formatted private key."
}

variable "private_key_wo" {
  type        = string
  default     = null
  sensitive   = true
  description = "(Optional) Write-only PEM-formatted private key."
}

variable "private_key_wo_version" {
  type        = number
  default     = null
  description = "(Optional) Version used to trigger updates to private_key_wo."
}

variable "region" {
  type        = string
  default     = null
  description = "(Optional) Region where this resource will be managed. Defaults to the Region set in the provider configuration."
}

variable "validation_option" {
  type = set(object({
    domain_name       = string
    validation_domain = string
  }))
  default     = []
  description = "(Optional) Information about the initial validation of each domain name."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) A map of tags assigned to all modules."
}
