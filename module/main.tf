module "certificate" {
  source = "../resources/certificate"

  count = var.certificate != null ? 1 : 0

  certificate_authority_arn = lookup(var.certificate, "certificate_authority_arn", null)
  certificate_body          = lookup(var.certificate, "certificate_body", null)
  certificate_chain         = lookup(var.certificate, "certificate_chain", null)
  domain_name               = lookup(var.certificate, "domain_name", null)
  early_renewal_duration    = lookup(var.certificate, "early_renewal_duration", null)
  key_algorithm             = lookup(var.certificate, "key_algorithm", null)
  private_key               = lookup(var.certificate, "private_key", null)
  private_key_wo            = lookup(var.certificate, "private_key_wo", null)
  private_key_wo_version    = lookup(var.certificate, "private_key_wo_version", null)
  region                    = lookup(var.certificate, "region", null)
  subject_alternative_names = lookup(var.certificate, "subject_alternative_names", null)
  validation_method         = lookup(var.certificate, "validation_method", null)
  options                   = lookup(var.certificate, "options", null)
  validation_option         = lookup(var.certificate, "validation_option", null)

  tags = lookup(var.certificate, "tags", null)
}

module "existing_certificate" {
  source = "../resources/existing_certificate"

  count = var.existing_certificate != null ? 1 : 0

  domain      = lookup(var.existing_certificate, "domain", null)
  key_types   = lookup(var.existing_certificate, "key_types", null)
  most_recent = lookup(var.existing_certificate, "most_recent", null)
  region      = lookup(var.existing_certificate, "region", null)
  statuses    = lookup(var.existing_certificate, "statuses", null)
  types       = lookup(var.existing_certificate, "types", null)

  tags = lookup(var.existing_certificate, "tags", null)
}

module "certificate_validation" {
  source = "../resources/certificate_validation"

  count = var.certificate_validation != null ? 1 : 0

  certificate_arn         = try(var.certificate_validation.certificate_arn, null) != null ? var.certificate_validation.certificate_arn : (var.certificate != null ? module.certificate[0].arn : module.existing_certificate[0].arn)
  region                  = try(var.certificate_validation.region, null) != null ? var.certificate_validation.region : (var.certificate_validation.certificate_arn == null ? (var.certificate != null ? module.certificate[0].region : module.existing_certificate[0].region) : null)
  validation_record_fqdns = lookup(var.certificate_validation, "validation_record_fqdns", null)
  timeouts                = lookup(var.certificate_validation, "timeouts", null)
}
