output "certificate_id" {
  value       = module.acm_request_certificate.id
  description = "The ID of the certificate"
}

output "certificate_arn" {
  value       = module.acm_request_certificate.arn
  description = "The ID of the certificate"
}

output "certificate_domain_validation_options" {
  value       = module.acm_request_certificate.domain_validation_options
  description = "CNAME records that are added to the DNS zone to complete certificate validation"
}

output "validation_certificate_arn" {
  value       = module.acm_request_certificate.validation_certificate_arn
  description = "Certificate ARN from the `aws_acm_certificate_validation` resource"
}