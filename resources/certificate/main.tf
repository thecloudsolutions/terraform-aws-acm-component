resource "aws_acm_certificate" "this" {
  certificate_authority_arn = var.certificate_authority_arn
  certificate_body          = var.certificate_body
  certificate_chain         = var.certificate_chain
  domain_name               = var.domain_name
  early_renewal_duration    = var.early_renewal_duration
  key_algorithm             = var.key_algorithm
  private_key               = var.private_key
  private_key_wo            = var.private_key_wo
  private_key_wo_version    = var.private_key_wo_version
  region                    = var.region

  subject_alternative_names = var.subject_alternative_names
  validation_method         = var.validation_method

  dynamic "options" {
    for_each = var.options != null ? [var.options] : []

    content {
      certificate_transparency_logging_preference = lookup(options.value, "certificate_transparency_logging_preference", null)
      export                                      = lookup(options.value, "export", null)
    }
  }

  dynamic "validation_option" {
    for_each = var.validation_option != null ? var.validation_option : []

    content {
      domain_name       = validation_option.value.domain_name
      validation_domain = validation_option.value.validation_domain
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags
}
