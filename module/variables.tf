variable "certificate" {
  type = object({
    domain_name               = string
    validation_method         = string
    subject_alternative_names = optional(list(string))

    options = optional(object({
      certificate_transparency_logging_preference = string
    }))

    tags = optional(map(string))
  })

  default = null
}

variable "certificate_validation" {
  type = object({
    certificate_arn         = optional(string)
    region                  = optional(string)
    validation_record_fqdns = optional(list(string))

    timeouts = optional(object({
      create = string
    }))
  })

  default = null
}
