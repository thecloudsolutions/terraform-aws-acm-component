resource "aws_acm_certificate_validation" "this" {
  # TODO: region is for provider > 6.0.0 and we need to first make sure that everyone is using the latest provider!
  #region                  = var.region
  certificate_arn         = var.certificate_arn
  validation_record_fqdns = var.validation_record_fqdns

  dynamic "timeouts" {
    for_each = var.timeouts != null ? [var.timeouts] : []
    content {
      create = lookup(timeouts.value, "create", null)
    }
  }
}
