output "acm_certificate_ids" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_id }
  description = "The ID of the certificate"
}

output "acm_certificate_arns" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_arn }
  description = "The ARN of the certificate"
}

output "acm_certificate_regions" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_region }
  description = "Region where the certificate is managed."
}

output "acm_certificate_domain_names" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_domain_name }
  description = "The domain name for which the certificate is issued"
}

output "acm_certificate_domain_validation_options" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_domain_validation_options }
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Only set if DNS-validation was used."
}

output "acm_certificate_not_after" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_not_after }
  description = "Expiration date and time of the certificate."
}

output "acm_certificate_not_before" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_not_before }
  description = "Start of the validity period of the certificate."
}

output "acm_certificate_pending_renewal" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_pending_renewal }
  description = "Whether a private certificate eligible for managed renewal is within the early renewal period."
}

output "acm_certificate_renewal_eligibility" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_renewal_eligibility }
  description = "Whether the certificate is eligible for managed renewal."
}

output "acm_certificate_renewal_summary" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_renewal_summary }
  description = "Information about the status of ACM's managed renewal for the certificate."
}

output "acm_certificate_statuses" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_status }
  description = "Status of the certificate."
}

output "acm_certificate_tags_all" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "acm_certificate_types" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_type }
  description = "Source of the certificate."
}

output "acm_certificate_validation_ids" {
  value       = { for validation in keys(module.acm) : validation => module.acm[validation].certificate_validation_id }
  description = "The time at which the certificate was issued"
}

output "acm_certificate_validation_arns" {
  value       = { for validation in keys(module.acm) : validation => module.acm[validation].certificate_validation_arn }
  description = "The ARN of the validated certificate."
}

output "acm_certificate_validation_emails" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].certificate_validation_emails }
  description = "A list of addresses that received a validation E-Mail. Only set if EMAIL-validation was used."
}

output "acm_existing_certificate_ids" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_id }
  description = "The ID of the existing certificate."
}

output "acm_existing_certificate_arns" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_arn }
  description = "The ARN of the existing certificate."
}

output "acm_existing_certificate_regions" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_region }
  description = "Region where the existing certificate is managed."
}

output "acm_existing_certificate_domains" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_domain }
  description = "The domain of the existing certificate."
}

output "acm_existing_certificates" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate }
  description = "The existing ACM-issued certificate."
}

output "acm_existing_certificate_chains" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_chain }
  description = "Certificates forming the existing certificate's chain of trust."
}

output "acm_existing_certificate_statuses" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_status }
  description = "Status of the existing certificate."
}

output "acm_existing_certificate_tags" {
  value       = { for certificate in keys(module.acm) : certificate => module.acm[certificate].existing_certificate_tags }
  description = "Tags assigned to the existing certificate."
}
