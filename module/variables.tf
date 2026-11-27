variable "certificate" {
  type = object({
    certificate_authority_arn = optional(string)
    certificate_body          = optional(string)
    certificate_chain         = optional(string)
    domain_name               = optional(string)
    early_renewal_duration    = optional(string)
    key_algorithm             = optional(string)
    private_key               = optional(string)
    private_key_wo            = optional(string)
    private_key_wo_version    = optional(number)
    region                    = optional(string)
    subject_alternative_names = optional(set(string))
    validation_method         = optional(string)

    options = optional(object({
      certificate_transparency_logging_preference = optional(string)
      export                                      = optional(string)
    }))

    validation_option = optional(set(object({
      domain_name       = string
      validation_domain = string
    })))

    tags = optional(map(string))
  })

  default = null
}

variable "existing_certificate" {
  type = object({
    domain      = optional(string)
    key_types   = optional(set(string))
    most_recent = optional(bool)
    region      = optional(string)
    statuses    = optional(list(string))
    types       = optional(list(string))

    tags = optional(map(string))
  })

  default = null
}

variable "certificate_validation" {
  type = object({
    certificate_arn         = optional(string)
    region                  = optional(string)
    validation_record_fqdns = optional(set(string))

    timeouts = optional(object({
      create = string
    }))
  })

  default = null
}
