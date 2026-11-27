output "certificate_id" {
  value       = var.certificate != null || var.existing_certificate != null ? (var.certificate_validation != null && try(var.certificate_validation.certificate_arn, null) == null ? module.certificate_validation[0].certificate_arn : (var.certificate != null ? module.certificate[0].id : module.existing_certificate[0].id)) : null
  description = "The ID of the certificate"
}

output "certificate_arn" {
  value       = var.certificate != null || var.existing_certificate != null ? (var.certificate_validation != null && try(var.certificate_validation.certificate_arn, null) == null ? module.certificate_validation[0].certificate_arn : (var.certificate != null ? module.certificate[0].arn : module.existing_certificate[0].arn)) : null
  description = "The ARN of the certificate"
}

output "certificate_region" {
  value       = var.certificate != null ? module.certificate[0].region : (var.existing_certificate != null ? module.existing_certificate[0].region : null)
  description = "Region where the certificate is managed."
}

output "certificate_domain_name" {
  value       = var.certificate != null ? module.certificate[0].domain_name : (var.existing_certificate != null ? module.existing_certificate[0].domain : null)
  description = "The domain name for which the certificate is issued"
}

output "certificate_domain_validation_options" {
  value       = var.certificate != null ? module.certificate[0].domain_validation_options : null
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Only set if DNS-validation was used."
}

output "certificate_not_after" {
  value       = var.certificate != null ? module.certificate[0].not_after : null
  description = "Expiration date and time of the certificate."
}

output "certificate_not_before" {
  value       = var.certificate != null ? module.certificate[0].not_before : null
  description = "Start of the validity period of the certificate."
}

output "certificate_pending_renewal" {
  value       = var.certificate != null ? module.certificate[0].pending_renewal : null
  description = "Whether a private certificate eligible for managed renewal is within the early renewal period."
}

output "certificate_renewal_eligibility" {
  value       = var.certificate != null ? module.certificate[0].renewal_eligibility : null
  description = "Whether the certificate is eligible for managed renewal."
}

output "certificate_renewal_summary" {
  value       = var.certificate != null ? module.certificate[0].renewal_summary : null
  description = "Information about the status of ACM's managed renewal for the certificate."
}

output "certificate_status" {
  value       = var.certificate != null ? module.certificate[0].status : (var.existing_certificate != null ? module.existing_certificate[0].status : null)
  description = "Status of the certificate."
}

output "certificate_tags_all" {
  value       = var.certificate != null ? module.certificate[0].tags_all : null
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "certificate_type" {
  value       = var.certificate != null ? module.certificate[0].type : null
  description = "Source of the certificate."
}

output "certificate_validation_emails" {
  value       = var.certificate != null ? module.certificate[0].validation_emails : null
  description = "A list of addresses that received a validation E-Mail. Only set if EMAIL-validation was used."
}

output "certificate_validation_id" {
  value       = var.certificate_validation != null ? module.certificate_validation[0].id : null
  description = "The time at which the certificate was issued"
}

output "certificate_validation_arn" {
  value       = var.certificate_validation != null ? module.certificate_validation[0].certificate_arn : null
  description = "The ARN of the validated certificate."
}

output "existing_certificate_id" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].id : null
  description = "The ID of the existing certificate."
}

output "existing_certificate_arn" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].arn : null
  description = "The ARN of the existing certificate."
}

output "existing_certificate_region" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].region : null
  description = "Region where the existing certificate is managed."
}

output "existing_certificate_domain" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].domain : null
  description = "The domain of the existing certificate."
}

output "existing_certificate" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].certificate : null
  description = "The existing ACM-issued certificate."
}

output "existing_certificate_chain" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].certificate_chain : null
  description = "Certificates forming the existing certificate's chain of trust."
}

output "existing_certificate_status" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].status : null
  description = "Status of the existing certificate."
}

output "existing_certificate_tags" {
  value       = var.existing_certificate != null ? module.existing_certificate[0].tags : null
  description = "Tags assigned to the existing certificate."
}
