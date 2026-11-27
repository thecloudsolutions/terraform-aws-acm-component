output "id" {
  value       = data.aws_acm_certificate.this.id
  description = "The ID of the existing certificate."
}

output "arn" {
  value       = data.aws_acm_certificate.this.arn
  description = "The ARN of the existing certificate."
}

output "region" {
  value       = data.aws_acm_certificate.this.region
  description = "Region where the existing certificate is managed."
}

output "domain" {
  value       = data.aws_acm_certificate.this.domain
  description = "The domain of the existing certificate."
}

output "certificate" {
  value       = data.aws_acm_certificate.this.certificate
  description = "The existing ACM-issued certificate."
}

output "certificate_chain" {
  value       = data.aws_acm_certificate.this.certificate_chain
  description = "Certificates forming the existing certificate's chain of trust."
}

output "status" {
  value       = data.aws_acm_certificate.this.status
  description = "Status of the existing certificate."
}

output "tags" {
  value       = data.aws_acm_certificate.this.tags
  description = "Tags assigned to the existing certificate."
}
