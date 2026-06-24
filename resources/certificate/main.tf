resource "aws_acm_certificate" "this" {
  domain_name = var.domain_name

  subject_alternative_names = var.subject_alternative_names
  validation_method         = var.validation_method

  dynamic "options" {
    for_each = var.options != null ? [var.options] : []

    content {
      certificate_transparency_logging_preference = lookup(options.value, "certificate_transparency_logging_preference", null)
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags
}
