variable "region" {
  type        = string
  default     = null
  description = "(Optional) Region where this resource will be managed. Defaults to the Region set in the provider configuration."
}

variable "certificate_arn" {
  type        = string
  description = "(Required) The ARN of the certificate that is being validated."
}

variable "validation_record_fqdns" {
  type        = list(string)
  default     = []
  description = "(Optional) List of FQDNs that implement the validation. Only valid for DNS validation method ACM certificates. If this is set, the resource can implement additional sanity checks and has an explicit dependency on the resource that is implementing the validation"
}

variable "timeouts" {
  type = object({
    # (Default 45m) How long to wait for a certificate to be issued.
    create = string
  })
  default     = null
  description = "(Optional) Timeouts for the service."
}