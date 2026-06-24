module "certificate" {
  source = "git@github.com:thecloudsolutions/terraform-aws-resources-internal.git//acm/certificate?ref=main"

  count = var.certificate != null ? 1 : 0

  domain_name               = var.certificate.domain_name
  validation_method         = var.certificate.validation_method
  subject_alternative_names = lookup(var.certificate, "subject_alternative_names", null)
  options                   = lookup(var.certificate, "options", null)

  tags = lookup(var.certificate, "tags", null)
}

module "certificate_validation" {
  source = "git@github.com:thecloudsolutions/terraform-aws-resources-internal.git//acm/certificate_validation?ref=main"

  count = var.certificate_validation != null ? 1 : 0

  certificate_arn         = try(var.certificate_validation.certificate_arn, null) != null ? var.certificate_validation.certificate_arn : module.certificate[0].arn
  region                  = lookup(var.certificate_validation, "region", null)
  validation_record_fqdns = lookup(var.certificate_validation, "validation_record_fqdns", null)
  timeouts                = lookup(var.certificate_validation, "timeouts", null)
}
