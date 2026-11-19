output "id" {
  value       = aws_acm_certificate_validation.this.id
  description = "The time at which the certificate was issued"
}

output "certificate_arn" {
  value       = aws_acm_certificate_validation.this.certificate_arn
  description = "The ARN of the validated certificate."
}
