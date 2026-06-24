output "certificate_id" {
  value       = var.certificate != null ? module.certificate[0].id : null
  description = "The ID of the certificate"
}

output "certificate_arn" {
  value       = var.certificate != null ? module.certificate[0].arn : null
  description = "The ARN of the certificate"
}

output "certificate_domain_name" {
  value       = var.certificate != null ? module.certificate[0].domain_name : null
  description = "The domain name for which the certificate is issued"
}

output "certificate_domain_validation_options" {
  value       = var.certificate != null ? module.certificate[0].domain_validation_options : null
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Only set if DNS-validation was used."
}

output "certificate_status" {
  value       = var.certificate != null ? module.certificate[0].status : null
  description = "Status of the certificate."
}

output "certificate_tags_all" {
  value       = var.certificate != null ? module.certificate[0].tags_all : null
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "certificate_validation_emails" {
  value       = var.certificate != null ? module.certificate[0].validation_emails : null
  description = "A list of addresses that received a validation E-Mail. Only set if EMAIL-validation was used."
}

output "certificate_validation_id" {
  value       = var.certificate_validation != null ? module.certificate_validation[0].id : null
  description = "The time at which the certificate was issued"
}
