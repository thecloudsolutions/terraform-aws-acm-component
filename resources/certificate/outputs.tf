output "id" {
  value       = aws_acm_certificate.this.id
  description = "The ID of the certificate"
}

output "arn" {
  value       = aws_acm_certificate.this.arn
  description = "The ARN of the certificate"
}

output "region" {
  value       = aws_acm_certificate.this.region
  description = "Region where the certificate is managed."
}

output "domain_name" {
  value       = aws_acm_certificate.this.domain_name
  description = "The domain name for which the certificate is issued"
}

output "domain_validation_options" {
  value       = aws_acm_certificate.this.domain_validation_options
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Only set if DNS-validation was used."
}

output "not_after" {
  value       = aws_acm_certificate.this.not_after
  description = "Expiration date and time of the certificate."
}

output "not_before" {
  value       = aws_acm_certificate.this.not_before
  description = "Start of the validity period of the certificate."
}

output "pending_renewal" {
  value       = aws_acm_certificate.this.pending_renewal
  description = "Whether a private certificate eligible for managed renewal is within the early renewal period."
}

output "renewal_eligibility" {
  value       = aws_acm_certificate.this.renewal_eligibility
  description = "Whether the certificate is eligible for managed renewal."
}

output "renewal_summary" {
  value       = aws_acm_certificate.this.renewal_summary
  description = "Information about the status of ACM's managed renewal for the certificate."
}

output "status" {
  value       = aws_acm_certificate.this.status
  description = "Status of the certificate."
}

output "tags_all" {
  value       = aws_acm_certificate.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "type" {
  value       = aws_acm_certificate.this.type
  description = "Source of the certificate."
}

output "validation_emails" {
  value       = aws_acm_certificate.this.validation_emails
  description = "A list of addresses that received a validation E-Mail. Only set if EMAIL-validation was used."
}
